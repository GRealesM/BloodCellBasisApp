load("data/cell-basis-sparse-3.0.RData")
projected.basis <- readRDS("data/cell_basis_trait_projection_v3.RDS")
projected.basis[, `:=` (Var.Delta=0, z=0, P=NA)]