// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {WithdrawRequest} from "../ExitVaultStorage.sol";
import {GmxAddresses} from "src/ExitVaultEntryPoint.sol";

interface IExitVault {
    // When user is trying to donate over 100%
    error InvalidDonationAmount();

    // Trying to fill a non-existing request.
    error RequestDoesNotExist();

    // Token provided is not supported by the platform.
    error InvalidTokenSupplied();

    // Token deposit exceeds the amount of tokens required for the remainder of staking.
    error VaultAtCapacity();

    // User trying to withdraw more tokens that are availiable.
    error SharesBalanceExceeded();

    // Incorrect withdraw request creation is attempted.
    error InvalidRemaining();

    // Owner trying to transfer an account after users have started vesting.
    error VaultHasBeenLocked();

    // Owner trying to transfer the vault to a wrong address.
    error InvalidReceiver();

    // For whern address(0) is passed as parameter where not allowed.
    error ZeroAddress();

    // For when the size of donation amount is too low.
    error DonationTooLow();

    // Error when the withdraw request does not exits.
    error NoRequestFound();

    // For when you match a request but the share that were matched are already claimed by the previous owner. Thus you wont vest expected amount.
    error UnclaimedTooLow();

    // For when the ratio of amount to withdraw and donation size is invalid.
    error InvalidRatio();

    // Owner of the vault should not use the general deposit function.
    error UseOwnerDepositFunction();

    error InvalidAmount();

    error OnlyEntryPoint();

    // Reverted when action is taken past early owner exit.
    error VaultIsClosed();
    // User is trying to fill their own request.
    error FillingSelfRequest();

    event IncreasedDonation(address token, uint256 newDonation);

    event Deposit(address indexed staker, address token, uint256 sharesMinted, string indexed refcode);

    event WithdrawRequestCreated(address indexed staker, WithdrawRequest _request);

    event WithdrawRequestInvalidated(address indexed staker, address token);

    event WithdrawRequestMatched(address indexed staker, address token, uint256 amount);

    event OwnerExited(address indexed owner, address indexed receiver);

    event GMXVestingStarted(address indexed owner, uint256 indexed endingTime);

    event GLPVestingStarted(address indexed owner, uint256 indexed endingTime);

    function initialize(
        address _owner,
        uint256 _donationPartGmx,
        uint256 _donationPartGlp,
        uint256 _gmxAmount,
        uint256 _glpAmount,
        uint256 _protocolPart,
        address _treasury,
        GmxAddresses calldata _gmxAddresses
    ) external;

    function delegate(address _delegate) external;
    function setOwner(address _to) external;
    function refreshGMXAddresses() external;
}
