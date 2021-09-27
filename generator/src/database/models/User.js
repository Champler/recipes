module.exports = (sequelize,dataTypes) => {
    let alias = "User"

    let cols={
        id:{
            type: dataTypes.INTEGER(11).UNSIGNED,
            primaryKey: true,
            autoIncrement:true,
            allowNull:false
        },
        name:{
            type: dataTypes.STRING(50),
            allowNull:false
        },
        password:{
            type:dataTypes.STRING(100),
            allowNull:false
        }
    }
    let config = {
        tableName: "users",
        timestamps:false
    }
    const User = sequelize.define(alias,cols,config)
   

    User.associate = models=>{
        User.hasMany(models.UserRecipes,{
            as:'recipes',
            foreignKey:'user_id'
        })
    }

    return User
}