class User < ApplicationRecord
 validates:username, presence:true, length: {minimum:4, maximum:20}
 validates:gender, presence:true
end