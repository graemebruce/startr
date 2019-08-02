############################################################
# Charts, maps, etc. from your data
#
# Use the `write_plot` function to write the plot directly
# to the `plots/` folder, using the variable name as
# the filename.
# This includes template from `bbplot` using data from gapminder
# For templates, go to https://bbc.github.io/rcookbook/
#
############################################################


#dummy data for chart from gapminder package
line_df <- gapminder %>%
  filter(country == "Malawi")

#Make plot
line <- ggplot(dumbbell_df, aes(x = `1967`, xend = `2007`, y = reorder(country, gap), group = country)) +
  geom_dumbbell(colour = "#dddddd",
                size = 3,
                colour_x = "#FAAB18",
                colour_xend = "#1380A1") +
  bbc_style() +
  labs(title="We're living longer",
       subtitle="Biggest life expectancy rise, 1967-2007")

finalise_plot(plot_name = line,
              source = "Source: Gapminder",
              save_filepath = "plots/filename_that_my_plot_should_be_saved_to.png",
              width_pixels = 640,
              height_pixels = 450)
