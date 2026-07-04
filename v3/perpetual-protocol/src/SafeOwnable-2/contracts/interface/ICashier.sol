// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.17;

interface ICashierEvents {
    event WhitelistChanged(address indexed account, bool oldEnable, bool newEnable);

    event Deposited(address indexed account, address token, uint256 amount);
}

interface ICashierErrors {
    error AddressIsNotContract(address addressArg);

    error AddressIsNotWhitelisted(address addressArg);

    error AmountIsInvalid(uint256 amount);

    error TransferIsInconsistent(uint256 expectedAmount, uint256 actualAmount);
}

interface ICashier is ICashierEvents, ICashierErrors {
    function deposit(uint256 amount) external;

    function isWhitelist(address account) external view returns (bool);

    function getSettlementToken() external view returns (address);
}
