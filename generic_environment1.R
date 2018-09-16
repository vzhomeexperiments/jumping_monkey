
generic_environment <- function (state, action) 
{
  # next_state <- state
  # define positions (for sampling)
   stat <- c("s1", "s2", "s3", "s4", "s5", "s6")
   #action <- c("JUMP", "SIT")
  if ((state == stat[1] || state == stat[2] || state == stat[3]) && action == "JUMP")
    {
    # generate reward
    reward <- rnorm(1, 5)
    }
  if ((state == stat[4] || state == stat[5] || state == stat[6]) && action == "JUMP")
  {
    # generate reward
    reward <- rnorm(1, -5)
  } 
  if (action == "SIT") { reward <- 0 }   
   # sample number from 1:6 to define next State (at random)  
   next_state <- stat[sample.int(6, size = 1)]
   
   
  out <- list(NextState = next_state, Reward = reward)
  return(out)
}