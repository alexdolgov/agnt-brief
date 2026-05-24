// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

library InsuranceFund {
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeMath for uint256;

    struct Props {
        EnumerableSet.AddressSet tokens;
        mapping(address => InsuranceFund.TokenBalance) tokenBalances;
    }

    struct TokenBalance {
        uint256 amount;
        uint256 unsettleAmount;
    }

    event FundsUpdateEvent(address stakeToken, address token, TokenBalance preTokenBalance, TokenBalance tokenBalance);

    function load(address stakeToken) public pure returns (Props storage self) {
        bytes32 s = keccak256(abi.encode("xyz.elfi.storage.InsuranceFund", stakeToken));
        assembly {
            self.slot := s
        }
    }

    function addFunds(address stakeToken, address token, uint256 amount) public {
        InsuranceFund.Props storage self = load(stakeToken);
        if (!self.tokens.contains(token)) {
            self.tokens.add(token);
        }
        TokenBalance storage balance = self.tokenBalances[token];
        TokenBalance memory preBalance = balance;
        balance.amount += amount;
        emit FundsUpdateEvent(stakeToken, token, preBalance, balance);
    }

    function addUnsettleFunds(address stakeToken, address token, uint256 unsettleAmount) public {
        InsuranceFund.Props storage self = load(stakeToken);
        if (!self.tokens.contains(token)) {
            self.tokens.add(token);
        }
        TokenBalance storage balance = self.tokenBalances[token];
        TokenBalance memory preBalance = balance;
        balance.unsettleAmount += unsettleAmount;
        emit FundsUpdateEvent(stakeToken, token, preBalance, balance);
    }

    function settleUnsettleFunds(address stakeToken, address token, uint256 settleAmount) public {
        InsuranceFund.Props storage self = load(stakeToken);
        if (!self.tokens.contains(token)) {
            return;
        }
        TokenBalance storage balance = self.tokenBalances[token];
        require(balance.unsettleAmount >= settleAmount, "settleAmount is bigger than unsettleAmount");
        TokenBalance memory preBalance = balance;
        balance.unsettleAmount -= settleAmount;
        balance.amount += settleAmount;
        emit FundsUpdateEvent(stakeToken, token, preBalance, balance);
    }

    function getFundsTokens(InsuranceFund.Props storage self) external view returns (address[] memory) {
        return self.tokens.values();
    }

    function getTokenFunds(InsuranceFund.Props storage self, address token) external view returns (uint256) {
        return self.tokenBalances[token].amount;
    }

    function getTokenUnsettleFunds(InsuranceFund.Props storage self, address token) external view returns (uint256) {
        return self.tokenBalances[token].unsettleAmount;
    }
}
