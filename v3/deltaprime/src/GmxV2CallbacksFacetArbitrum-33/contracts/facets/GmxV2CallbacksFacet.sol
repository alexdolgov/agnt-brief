// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: 799a1765b64edc5c158198ef84f785af79e234ae;
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import "../ReentrancyGuardKeccak.sol";
import "../lib/SolvencyMethods.sol";
import {DiamondStorageLib} from "../lib/DiamondStorageLib.sol";
import "../interfaces/ITokenManager.sol";
import "../interfaces/IWrappedNativeToken.sol";

import "../interfaces/gmx-v2/DepositV2.sol";
import "../interfaces/gmx-v2/WithdrawalV2.sol";
import "../interfaces/gmx-v2/IRoleStore.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../interfaces/gmx-v2/IDepositCallbackReceiver.sol";
import "../interfaces/gmx-v2/EventUtils.sol";
import "../interfaces/gmx-v2/IWithdrawalCallbackReceiver.sol";
import "../interfaces/gmx-v2/IGasFeeCallbackReceiver.sol";

//This path is updated during deployment
import "../lib/arbitrum/DeploymentConstants.sol";

abstract contract GmxV2CallbacksFacet is IDepositCallbackReceiver, IWithdrawalCallbackReceiver, IGasFeeCallbackReceiver, ReentrancyGuardKeccak, SolvencyMethods {
    using TransferHelper for address;
    using Deposit for Deposit.Props;
    using Withdrawal for Withdrawal.Props;

    // CONSTANTS
    bytes32 constant public CONTROLLER = keccak256(abi.encode("CONTROLLER"));

    // GMX contracts
    function getGmxV2RoleStore() internal pure virtual returns (address);

    // Mappings
    function marketToLongToken(address market) internal virtual pure returns (address);
    function marketToShortToken(address market) internal virtual pure returns (address);

    
    // Helper function to check if caller is authorized GMX keeper
    function isCallerAuthorized(address caller) internal view returns (bool) {
        IRoleStore roleStore = IRoleStore(getGmxV2RoleStore());
        return roleStore.hasRole(caller, CONTROLLER);
    }

    // Helper function to wrap native tokens
    function wrapNativeToken() internal {
        uint256 balance = address(this).balance;
        if(balance > 0){
            IWrappedNativeToken nativeToken = IWrappedNativeToken(DeploymentConstants.getNativeToken());
            nativeToken.deposit{value : balance}();
            ITokenManager tokenManager = DeploymentConstants.getTokenManager();
            _syncExposure(tokenManager, address(nativeToken));
        }
    }
    
    // Helper function to extract data from EventUtils.EventLogData
    function extractDepositDataFromEvent(EventUtils.EventLogData memory depositData) internal pure returns (
        address account,
        address market,
        uint256 executionFee
    ) {
        // Use EventUtils library functions directly
        bool found;
        
        (found, account) = EventUtils.getWithoutRevert(depositData.addressItems, "account");
        require(found, "Account not found in deposit data");
        
        (found, market) = EventUtils.getWithoutRevert(depositData.addressItems, "market");
        require(found, "Market not found in deposit data");
        
        (found, executionFee) = EventUtils.getWithoutRevert(depositData.uintItems, "executionFee");
        require(found, "Execution fee not found in deposit data");
    }

    function extractWithdrawalDataFromEvent(EventUtils.EventLogData memory withdrawalData) internal pure returns (
        address account,
        address market,
        uint256 executionFee
    ) {
        // Use EventUtils library functions directly
        bool found;
        
        (found, account) = EventUtils.getWithoutRevert(withdrawalData.addressItems, "account");
        require(found, "Account not found in withdrawal data");
        
        (found, market) = EventUtils.getWithoutRevert(withdrawalData.addressItems, "market");
        require(found, "Market not found in withdrawal data");
        
        (found, executionFee) = EventUtils.getWithoutRevert(withdrawalData.uintItems, "executionFee");
        require(found, "Execution fee not found in withdrawal data");
    }

    // OLD CALLBACK SIGNATURES - Keep for backward compatibility
    // function afterDepositExecution(bytes32 key, Deposit.Props memory deposit, EventUtils.EventLogData memory eventData) external onlyGmxV2Keeper nonReentrant override {
    //     _handleDepositExecution(deposit.account(), deposit.addresses.market, deposit.numbers.executionFee);
    // }

    // function afterDepositCancellation(bytes32 key, Deposit.Props memory deposit, EventUtils.EventLogData memory eventData) external onlyGmxV2Keeper nonReentrant override {
    //     _handleDepositCancellation(deposit.account(), deposit.addresses.market, deposit.numbers.executionFee, deposit.numbers.initialLongTokenAmount, deposit.numbers.initialShortTokenAmount);
    // }

    // function afterWithdrawalExecution(bytes32 key, Withdrawal.Props memory withdrawal, EventUtils.EventLogData memory eventData) external onlyGmxV2Keeper nonReentrant override {
    //     _handleWithdrawalExecution(withdrawal.account(), withdrawal.addresses.market, withdrawal.numbers.executionFee);
    // }

    // function afterWithdrawalCancellation(bytes32 key, Withdrawal.Props memory withdrawal, EventUtils.EventLogData memory eventData) external onlyGmxV2Keeper nonReentrant override {
    //     _handleWithdrawalCancellation(withdrawal.account(), withdrawal.addresses.market, withdrawal.numbers.executionFee);
    // }

    // NEW CALLBACK SIGNATURES - For future compatibility
    function afterDepositExecution(bytes32 key, EventUtils.EventLogData memory depositData, EventUtils.EventLogData memory eventData) external onlyGmxV2Keeper nonReentrant {
        (address account, address market, uint256 executionFee) = extractDepositDataFromEvent(depositData);
        _handleDepositExecution(account, market, executionFee);
    }

    function afterDepositCancellation(bytes32 key, EventUtils.EventLogData memory depositData, EventUtils.EventLogData memory eventData) external onlyGmxV2Keeper nonReentrant {
        (address account, address market, uint256 executionFee) = extractDepositDataFromEvent(depositData);
        
        bool found;
        uint256 initialLongTokenAmount;
        uint256 initialShortTokenAmount;
        
        (found, initialLongTokenAmount) = EventUtils.getWithoutRevert(depositData.uintItems, "initialLongTokenAmount");
        require(found, "Initial long token amount not found");
        
        (found, initialShortTokenAmount) = EventUtils.getWithoutRevert(depositData.uintItems, "initialShortTokenAmount");
        require(found, "Initial short token amount not found");
        
        _handleDepositCancellation(account, market, executionFee, initialLongTokenAmount, initialShortTokenAmount);
    }

    function afterWithdrawalExecution(bytes32 key, EventUtils.EventLogData memory withdrawalData, EventUtils.EventLogData memory eventData) external onlyGmxV2Keeper nonReentrant {
        (address account, address market, uint256 executionFee) = extractWithdrawalDataFromEvent(withdrawalData);
        _handleWithdrawalExecution(account, market, executionFee);
    }

    function afterWithdrawalCancellation(bytes32 key, EventUtils.EventLogData memory withdrawalData, EventUtils.EventLogData memory eventData) external onlyGmxV2Keeper nonReentrant {
        (address account, address market, uint256 executionFee) = extractWithdrawalDataFromEvent(withdrawalData);
        _handleWithdrawalCancellation(account, market, executionFee);
    }

    // SHARED INTERNAL LOGIC - Extract common logic to avoid duplication
    function _handleDepositExecution(address account, address market, uint256 executionFee) internal {
        if(account != address(this)){
            revert OrderCreatorNotAuthorized();
        }

        ITokenManager tokenManager = DeploymentConstants.getTokenManager();

        // Native token transfer happens after execution of this method
        wrapNativeToken();

        // Sync exposures for the GM token
        _syncExposure(tokenManager, market);

        // Clear pending exposure for the GM token
        tokenManager.setPendingExposureToZero(tokenManager.tokenAddressToSymbol(market), account);

        DiamondStorageLib.unfreezeAccount(msg.sender);
        emit DepositExecuted(msg.sender, market, IERC20Metadata(market).balanceOf(address(this)), executionFee);
    }

    function _handleDepositCancellation(address account, address market, uint256 executionFee, uint256 initialLongTokenAmount, uint256 initialShortTokenAmount) internal {
        if(account != address(this)){
            revert OrderCreatorNotAuthorized();
        }

        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        address longToken = marketToLongToken(market);
        address shortToken = marketToShortToken(market);

        // Native token transfer happens after execution of this method
        wrapNativeToken();

        if(initialLongTokenAmount > 0) {
            _syncExposure(tokenManager, longToken);
        }
        if(initialShortTokenAmount > 0) {
            _syncExposure(tokenManager, shortToken);
        }

        tokenManager.setPendingExposureToZero(tokenManager.tokenAddressToSymbol(market), account);

        DiamondStorageLib.unfreezeAccount(msg.sender);
        emit DepositCancelled(msg.sender, market, executionFee);
    }

    function _handleWithdrawalExecution(address account, address market, uint256 executionFee) internal {
        if(account != address(this)){
            revert OrderCreatorNotAuthorized();
        }

        ITokenManager tokenManager = DeploymentConstants.getTokenManager();
        address longToken = marketToLongToken(market);
        address shortToken = marketToShortToken(market);

        // Native token transfer happens after execution
        wrapNativeToken();

        _syncExposure(tokenManager, longToken);
        _syncExposure(tokenManager, shortToken);

        tokenManager.setPendingExposureToZero(tokenManager.tokenAddressToSymbol(longToken), account);
        tokenManager.setPendingExposureToZero(tokenManager.tokenAddressToSymbol(shortToken), account);

        DiamondStorageLib.unfreezeAccount(msg.sender);
        emit WithdrawalExecuted(
            msg.sender,
            market,
            IERC20Metadata(longToken).balanceOf(address(this)),
            IERC20Metadata(shortToken).balanceOf(address(this)),
            executionFee
        );
    }

    function _handleWithdrawalCancellation(address account, address market, uint256 executionFee) internal {
        if(account != address(this)){
            revert OrderCreatorNotAuthorized();
        }

        ITokenManager tokenManager = DeploymentConstants.getTokenManager();

        // Native token transfer happens after execution
        wrapNativeToken();

        address longToken = marketToLongToken(market);
        address shortToken = marketToShortToken(market);

        _syncExposure(tokenManager, longToken);
        _syncExposure(tokenManager, shortToken);

        tokenManager.setPendingExposureToZero(tokenManager.tokenAddressToSymbol(longToken), account);
        tokenManager.setPendingExposureToZero(tokenManager.tokenAddressToSymbol(shortToken), account);

        DiamondStorageLib.unfreezeAccount(msg.sender);
        emit WithdrawalCancelled(msg.sender, market, executionFee);
    }

    function refundExecutionFee(bytes32 /* key */, EventUtils.EventLogData memory /* eventData */) external payable nonReentrant onlyGmxV2Keeper {
        wrapNativeToken();
        emit GasFeeRefunded(msg.value);
    }

    

    // MODIFIERS
    modifier onlyGmxV2Keeper() {
        require(isCallerAuthorized(msg.sender), "Must be a GMX V2 authorized Keeper");
        _;
    }

    

    error OrderCreatorNotAuthorized();

    // EVENTS
    event DepositExecuted(address indexed accountAddress, address indexed market, uint256 gmAmount, uint256 executionFee);
    event DepositCancelled(address indexed accountAddress, address indexed market, uint256 executionFee);
    event WithdrawalExecuted(address indexed accountAddress, address indexed market, uint256 longTokenAmount, uint256 shortTokenAmount, uint256 executionFee);
    event WithdrawalCancelled(address indexed accountAddress, address indexed market, uint256 executionFee);
    event GasFeeRefunded(uint256 refundedFee);
}