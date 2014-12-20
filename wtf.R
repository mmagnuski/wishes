malzowinki <- c("Anna Wieczorek", "Maciej Taraday")
komukto    <- c("męża", "żony")
wsh <- "              \n\n\n!!&aaacdeeeefFikoorrrrTTvWWyz"
idx <- c(15,1,2,3,4,5,6,7,43,40,31,18,16,44,32,26,24,46,
	34,36,27,33,8,20,9,41,21,37,22,25,23,45,17,10,11,12,
	13,14,30,35,38,28,42,29,39,19)

wishfun <- function(m, f) {
	deklin <- c('jowi', 'ie')
	m.splt <- unlist(strsplit(m, ' '))
	num.lt <- nchar(m.splt[1])
	idx    <- (substr(m.splt[1], 
					start = num.lt,
					stop  = num.lt) == 'a') + 1

	m.splt[1] <- paste(substr(m.splt[1], start = 1,
			stop = num.lt - 1), deklin[idx], sep = '')

	m   <- paste(m.splt, collapse = ' ')
	txt <- paste('Gratulujemy', m, 'istotnego efektu', f)
	writeLines(txt)
}

wsh <- paste(sapply( strsplit(sortedtxt, NULL), 
		function(x) x[invsrt] ), collapse = '')

invisible(lapply(
	1:length(malzowinki), 
	function(i) wishfun(malzowinki[i], komukto[i])
	))
writeLines(wsh)

# życzenia dostępne są też tutaj:
# https://github.com/mmagnuski/wishes/blob/master/wtf.R