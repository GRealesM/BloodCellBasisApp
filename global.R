load("data/cell-basis-sparse-1.0.RData")
projected.basis <- readRDS("data/cell_basis_trait_projection.RDS")
projected.basis[, `:=` (Var.Delta=0, z=0, P=NA)]