use world_layout;
select * from layoffs;

-- DUPLICATE TABLE
create table layoffs_staging
like layoffs;

insert layoffs_staging (select * from layoffs);

use world_layout;
CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` text,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised` text
 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE layoffs_staging2 ADD COLUMN (row_num int);




 