library(readr)
library(ggplot2)
library(tidyr)
library(dplyr)
library(extrafont)

# Reads previously parsed data on performance
genome_size_data <- read_csv('results/genome_size/performance_stats_genome_size.csv')
sample_size_data <- read_csv('results/sample_size/performance_stats_sample_size.csv')
genome_size_metadata <- read_csv('metadata/genome_size/accessions_subset_info.csv')

# Add organisms type column
genome_size_data$organism_type <- genome_size_metadata$domain[match(genome_size_data$organism, genome_size_metadata$organism)]
genome_size_data$organism_type <- tools::toTitleCase(genome_size_data$organism_type)
sample_size_data$organism_type <- 'Prokaryote'

# Add value columns for y axis
genome_size_data$value <- genome_size_metadata$ncbi_genome_estimate[match(genome_size_data$organism, genome_size_metadata$organism)]
genome_size_data$value <- genome_size_data$value / 1000000
colnames(sample_size_data)[1] <- 'value'

# Make replicate format
colnames(genome_size_data)[2] <- 'replicate'
genome_size_data$replicate <- letters[genome_size_data$replicate]

# Combine into a single table
genome_size_data$factor <- 'Genome size (Mb)'
sample_size_data$factor <- 'Number of samples'
needed_cols <- c(
  'value', 
  'replicate',
  'clock_hours',
  'max_rss_gb',
  'organism_type',
  'factor'
)
combined_data <- rbind(sample_size_data[, needed_cols], genome_size_data[, needed_cols])

# Reshape data for faceting
combined_data_long <- combined_data %>%
  pivot_longer(
    cols = c(max_rss_gb, clock_hours),
    names_to = "metric",
    values_to = "measurement"
  ) %>%
  mutate(
    metric = factor(metric,
                    levels = c("clock_hours", "max_rss_gb"),
                    labels = c("Run time (hours)", "Max RAM (GB)")),
    factor = factor(factor, levels = c("Number of samples", "Genome size (Mb)"), ordered = TRUE)
  )


text_data = data.frame(
  factor = c("Number of samples", "Genome size (Mb)", "Number of samples", "Genome size (Mb)"),
  metric = c("clock_hours", "clock_hours", "max_rss_gb", "max_rss_gb"),
  label = c("A", "C", "B", "D")
) %>%
  mutate(
    metric = factor(metric,
                    levels = c("clock_hours", "max_rss_gb"),
                    labels = c("Run time (hours)", "Max RAM (GB)")),
    factor = factor(factor, levels = c("Number of samples", "Genome size (Mb)"), ordered = TRUE)
  )

# Create the faceted plot
loadfonts(device = "pdf")
output <- ggplot(combined_data_long, aes(x = value, y = measurement, color = organism_type)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", se = FALSE, formula = y ~ x) +
  facet_grid(rows = vars(metric), cols = vars(factor), scales = "free", switch = "both") +
  geom_text(
    data = text_data,
    mapping = aes(x = -Inf, y = Inf, label = label),
    hjust = -0.5, vjust = 1.5,
    size = 4,
    inherit.aes = FALSE
  ) +
  scale_color_manual(values = c("Eukaryote" = "#1f78b4", "Prokaryote" = "#33a02c")) +
  labs(
    x = NULL,
    y = NULL,
    color = "Sample type:"
  ) +
  theme_bw(base_size = 12, base_family = "DejaVu Sans") +
  theme(
    legend.position = "bottom",
    panel.grid = element_blank(),
    strip.background = element_blank(),
    strip.placement = "outside",
  )

# Save plot
ggsave(output, filename = 'Figure4_benchmark_plots_sample_size_run_time_maxrss.pdf', path = 'results', width = 7, height = 5)
ggsave(output, filename = 'Figure4_benchmark_plots_sample_size_run_time_maxrss.png', path = 'results', width = 7, height = 5)
