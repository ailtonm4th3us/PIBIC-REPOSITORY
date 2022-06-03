library(devtools)  
library(ENMTML)  


ENMTML(pred_dir ="C:/Ailton/PIBIC/Biovar/Neotropic",
       occ_file= "C:/Ailton/PIBIC/Occ/occurrence_all.txt",
       result_dir="C:/Ailton/PIBIC/result_dir_all", # Cria o destinario para os resultados
       proj_dir= "C:/Ailton/PIBIC/Biovar_futuro", # Diretorio contendo as var. do futuro
       sp="sp", x="x", y="y", # Colunas nos arquivos de pontos de ocorrencia
       min_occ=1,
       colin_var=c(method="VIF"),  # Method to reduce variable collinearity
       imp_var = TRUE,
       eval_occ = NULL,
       sp_accessible_area = NULL, # area acessiveis. Basicamente uma restritricao da spp (biomas, etc)
       pres_abs_ratio = 1, # presenca - ausencia
       pseudoabs_method = c(method='ENV_CONST'),
       part=c(method='BOOT', replicates='10', proportion='0.7'),
       save_part=FALSE,save_final=TRUE,
       algorithm = c("MXS", "RDF", "SVM"),
       cores=4,
       thr=c(type='Jaccard'), # Limiar usado para previsoes de presenca-ausencia.
       msdm=NULL, # Restricoes espaciais dos modelos  - Tem a priori e a posteriori
       ensemble=c(method='SUP', metric='JACCARD'),
       extrapolation=TRUE
       )
