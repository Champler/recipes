module.exports = (sequelize,dataTypes) => {
    let alias = "Images"
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
        user_id:{
            type:dataTypes.INTEGER,
            allowNull:false
        }
    }
    let config={
        tablename:"images",
        timestamps:false
    }

    const Image = sequelize.define(alias,cols,config)

    Image.associate = models => {
        Image.belongsTo(models.UserRecipes,{
            as:"userRecipes",
            foreignKey:"user_recipes_id"
        })
    }

    return Image
}