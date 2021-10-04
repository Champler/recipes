module.exports = (sequelize,dataTypes) => {
    let alias = "UserRecipes"

    let cols = {
        id: {
            type: dataTypes.INTEGER(11).UNSIGNED,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        name: {
            type: dataTypes.STRING(100),
            allowNull: false
        },
        description: {
            type: dataTypes.STRING(100),
            allowNull: false
        },
        user_id: {
            type: dataTypes.INTEGER,
            allowNull: false
        },
        ingredients:{
            type: dataTypes.TEXT
        }
    }

    let config = {
        tableName: 'userRecipes',
        timestamps: false
    }

    const UserRecipes = sequelize.define(alias, cols, config)

    UserRecipes.associate = models =>{
        UserRecipes.belongsTo(models.User,{
            as: 'user',
            foreignKey: 'user_id'
        })
        UserRecipes.hasMany(models.Images,{
            as: 'images',
            foreignKey: 'user_recipes_id'
        })
    }

    return UserRecipes

}