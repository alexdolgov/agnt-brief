// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IReferenceAssetOracle.sol";
import "./OracleRegistry.sol";


/**
 * @title Balance Quoter
 * @notice Returns a list of balances for a given wallet in quote asset.
 */
contract BalanceQuoter is AccessControl {
        address public oracleRegistry;

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
	}

	function registerOracleRegistry(address oracleRegistryAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
		oracleRegistry = oracleRegistryAddress;
	}
	
	function quoteBalances(address quote, address[] calldata tokens) external view returns (uint256[] memory balances, uint256[] memory quotes) {
	        address oracle = OracleRegistry(oracleRegistry).oracles(quote);
	        uint256 nrOfTokens = tokens.length;
	        balances = new uint256[](nrOfTokens);
	        quotes = new uint256[](nrOfTokens);
	        for (uint256 i = 0; i < nrOfTokens; ++i) {
	            address token = tokens[i];
	            uint256 balance = IERC20(token).balanceOf(msg.sender);
	            balances[i] = balance;
	            if (balance == 0) continue;
	            (quotes[i],) = IReferenceAssetOracle(oracle).tokenReferenceValue(token, balance);
	        }
	}

}
