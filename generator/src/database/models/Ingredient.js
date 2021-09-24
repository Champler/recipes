module.exports = (sequelize,dataTypes) => {
    let alias = "Ingredients"
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
        user_recipes_id:{
            type:dataTypes.INTEGER,
            allowNull:false
        }
    }
    let config={
        tablename:"ingredients",
        timestamps:false
    }

    const Ingredient = sequelize.define(alias,cols,config)

    Ingredient.associate = models => {
        Ingredient.belongsTo(models.UserRecipes,{
            as:"userRecipes",
            foreignKey:"user_recipes_id"
        })
    }

    return Ingredient
}