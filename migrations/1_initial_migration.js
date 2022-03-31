const Migrations = artifacts.require("Migrations");
const DataTypes = artifacts.require("DataTypes");
const FlowControl = artifacts.require("FlowControl");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(DataTypes);
  deployer.deploy(FlowControl);
};
