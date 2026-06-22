pragma solidity ^0.8.20;
// node_modules/@openzeppelin4/contracts/proxy/transparent/TransparentUpgradeableProxy.sol
import {TransparentUpgradeableProxy as TUP} from "@openzeppelin4/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {ProxyAdmin} from "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol";

contract TUP_old is TUP {
    constructor(address logic, address admin, bytes memory data) TUP(logic, admin, data) {}
}
