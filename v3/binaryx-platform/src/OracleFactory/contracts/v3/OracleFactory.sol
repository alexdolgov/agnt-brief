// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./Oracle.sol";
import "./interfaces/IOracle.sol";
import "./interfaces/IAccessManager.sol";
import "./interfaces/IAddressesProvider.sol";

contract OracleFactory is Initializable {
    IAddressesProvider public addressesProvider;
    Oracle[] public oracles;

    event NewOracle(address indexed asset);

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.isSuperOracle(msg.sender), "Only admin can call this function");
        _;
    }

    function initialize(address _addressesProvider) public initializer {
        addressesProvider = IAddressesProvider(_addressesProvider);
    }

    function getOraclesLength() external view returns (uint256) {
        return oracles.length;
    }

    function getOracles() external view returns (Oracle[] memory) {
        return oracles;
    }

    function deployOracle(string memory name, IOracle.Type oracleType, address owner) external onlySuperOracle returns (address) {
        require(address(owner) != address(0), "OracleFactory: address owner is the zero address");
        Oracle oracle = new Oracle(name, oracleType, owner);
        oracles.push(oracle);
        emit NewOracle(address(oracle));
        return address(oracle);
    }
}
