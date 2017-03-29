shorten <- function(string,x){
        x = 2
        all_positions = str_locate_all(string,"/")[[1]]
        count = length(all_positions/2)
        
        if(x <= count & count > 0){
            index = (all_positions[x])
            return (substr(string,1,index))
        }
    
        return (string)
}

all_urls_web <- function(df){
    return ((unique(sapply(df$Page, shorten))))
}

all_urls_app <- function(df){
    return ((unique(sapply(df$Screen.Name, shorten))))
}