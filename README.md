# analysisDir

简单的目录管理包，用于自动创建带时间戳的分析目录。

## 安装

```r
# 从本地安装
install.packages("analysisDir", repos = NULL, type = "source")

# 或使用 devtools
devtools::install_local("path/to/analysisDir")
```

## 使用

```r
library(analysisDir)

# 基本用法
saveloc <- mkdir("C610", "sub_cluster_analysis")
# 创建: "C610_2024_01_14_sub_cluster_analysis"

# 仅有 suffix
saveloc <- mkdir(suffix = "results")
# 创建: "2024_01_14_results"

# 指定基础目录
saveloc <- mkdir("C610", "analysis", base_dir = "results")
# 创建: "results/C610_2024_01_14_analysis"
```

## 在你的工作流中使用

```r
library(analysisDir)

sams <- c("C610")
for (temsam in sams) {
  tem_obj <- subset(obj, cellcluster %in% c("C6", "C10"))
  saveloc <- mkdir(temsam, "sub_cluster_analysis")
  
  # 保存文件
  saveRDS(tem_obj, file.path(saveloc, "object.rds"))
}
```
