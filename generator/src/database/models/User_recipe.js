module.exports = (sequelize,dataTypes) => {
    let alias = "UserRecipes"
    let cols = {
        id:{
            type: dataTypes.INTEGER(11).UNSIGNED,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false 
        },
        name:{
            type:dataTypes.STRING(50),
            allowNull:false
        },
        decription:{
            type:dataTypes.STRING(100),
            allowNull:false
        },
        user_id:{
            type:dataTypes.INTEGER,
            allowNull:false
        }
    }
    let config={
        tablename:"user_recipes",
        timestamps:false
    }

    const UserRecipes = sequelize.define(alias,cols,config)

    UserRecipes.associate = models => {
        UserRecipes.belongsTo(models.User,{
            as:"user",
            foreignKey:"user_id"
        })
        UserRecipes.hasMany(models.Images,{
            as:"images",
            foreignKey:"user_recipes_id"
        })
        UserRecipes.hasMany(models.Ingredients,{
            as:"ingredients",
            foreignKey:"user_recipes_id"
        })
    }

    return UserRecipes
}