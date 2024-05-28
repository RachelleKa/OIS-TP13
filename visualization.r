install.packages("ggplot2")
# Chargement des bibliothèques nécessaires
library(ggplot2)

# Création d'un jeu de données exemple
set.seed(123)
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  category = sample(letters[1:3], 100, replace = TRUE)
)

# Création du graphique de dispersion avec ggplot2
plot <- ggplot(data, aes(x = x, y = y, color = category)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Graphique de dispersion avec ligne de régression",
       x = "Variable X",
       y = "Variable Y",
       color = "Catégorie") +
  theme_minimal()

# Affichage du graphique
print(plot)
