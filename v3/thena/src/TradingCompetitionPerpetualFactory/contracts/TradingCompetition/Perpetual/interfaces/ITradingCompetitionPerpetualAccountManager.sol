// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "./ITradingCompetitionManager.sol";

interface ITradingCompetitionPerpetualAccountManager{

    function users() external view returns(address[] memory);
    function isRegistered(address user) external view returns(bool);
    function timestamp() external view returns(uint startTimestamp, uint endTimestamp, uint registrationStart, uint registrationEnd);
    function tradingCompetition() external view returns(ITradingCompetitionManager.TC memory tc_data);
    function getAccountOf(address user) external view returns(address);
    function getBalanceOfUser(address user) external view returns(uint);
    function getQuotesLength(address account) external view returns(uint256);
    function isAccountValid(address user, uint256 start, uint256 size) external view returns(bool);
    function getPnLOfUser(address _user) external view returns(int256 amount, bool isValid);
    function getPnLOfUsers(address[] calldata _user) external view returns(int256[] memory amount, bool[] memory isValid);
    function getPnLOfAllUsers() external view returns(int256[] memory amount, bool[] memory isValid);


    event DepositAllocateStartingBalance(address indexed caller, address indexed account, uint indexed amount);
    event Register(address indexed user, uint256 regTimestamp);

    error NotRegistered();
    error Registered();
    error GetQuote();
    error GetQuoteIdsOf();
    error GetQuoteLength();
    error MaxUsers();
    error RegistrationTimestamp();


}