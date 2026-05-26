// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ICoreWriter } from "./interfaces/ICoreWriter.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { WETH } from "solmate/tokens/WETH.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";

contract DnCoreWriter is AccessControlUpgradeable {
    using SafeERC20 for IERC20Metadata;

    struct HyperCoreTokenConfig {
        uint64 tokenId;
        address systemAddress;
        uint8 hyperEVMDecimals;
        uint8 hypercoreDecimals;
    }

    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant BRIDGE_ROLE = keccak256("BRIDGE_ROLE");
    bytes32 public constant WITHDRAWAL_ROLE = keccak256("WITHDRAWAL_ROLE");
    bytes32 public constant TRADING_AGENT_ROLE = keccak256("TRADING_AGENT_ROLE");

    address public constant SYSTEM_ADDRESS = 0x2222222222222222222222222222222222222222;
    address public constant CORE_WRITER = 0x3333333333333333333333333333333333333333;
    address public constant HYPE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    WETH public constant WHYPE = WETH(payable(0x5555555555555555555555555555555555555555));
    address public midasReceiver;

    mapping(address => HyperCoreTokenConfig) public tokenConfig;
    mapping(address => bool) public isWithdrawalToken;
    mapping(uint32 => bool) public isTradeableAsset;
    uint256 public accumulatedFees;
    address public feeRecipient;
    address public feeToken;
    address public navOracle;

    error DnCoreWriter__TokenNotRegistered(address token);
    error DnCoreWriter__APIWalletAlreadyRegistered(address walletAddress);
    error DnCoreWriter__TokenNotWithdrawalToken(address token);
    error DnCoreWriter__MidasReceiverNotSet();
    error DnCoreWriter__AssetNotTradeable(uint32 asset);
    error DnCoreWriter__AmountMismatch(uint256 amount);
    error DnCoreWriter_NotNavOracle();
    error DnCoreWriter__FeeRecipientOrFeeTokenNotSet();

    event BridgeERC20Hypercore(address indexed token, address indexed systemAddress, uint256 amount);
    event BridgeHYPE(uint256 amount);
    event APIWalletAdded(address indexed walletAddress, string walletName);
    event WithdrawTokenFromHyperCore(
        address indexed destination, address indexed token, uint64 tokenId, uint256 amount
    );
    event ReleaseTokensForWithdrawals(address indexed receiver, address indexed token, uint256 amount);
    event APIWalletRemoved(string walletName);
    event LimitOrderPlaced(
        uint32 indexed asset, bool indexed isBuy, uint64 limitPx, uint64 sz, bool reduceOnly, uint8 tif, uint128 cloid
    );
    event USDClassTransfer(uint64 indexed ntl, bool indexed toPerp);
    event OrderCancelledByOid(uint32 indexed asset, uint64 indexed oid);
    event OrderCancelledByCloid(uint32 indexed asset, uint128 indexed cloid);
    event FeesAccumulated(uint256 amount);
    event MidasReceiverSet(address indexed midasReceiver);
    event FeeRecipientSet(address indexed feeRecipient);
    event FeeTokenSet(address indexed feeToken);
    event NavOracleSet(address indexed navOracle);
    event TradeableAssetToggled(uint32 indexed asset, bool indexed isTradeable);
    event WithdrawalTokenToggled(address indexed token, bool indexed isWithdrawalToken);
    event FeesTransferred(address indexed feeRecipient, address indexed feeToken, uint256 amount);

    modifier onlyNavOracle() {
        if (msg.sender != navOracle) {
            revert DnCoreWriter_NotNavOracle();
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {
        __AccessControl_init_unchained();
        _grantRole(ADMIN_ROLE, msg.sender);
        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);
        _setRoleAdmin(BRIDGE_ROLE, ADMIN_ROLE);
        _setRoleAdmin(WITHDRAWAL_ROLE, ADMIN_ROLE);
        _setRoleAdmin(TRADING_AGENT_ROLE, ADMIN_ROLE);
    }

    /**
     * @notice Bridges an ERC20 token to HyperCore
     * @dev Only callable by addresses with BRIDGE_ROLE
     * @param token The address of the ERC20 token to bridge
     * @param amount The amount of tokens to bridge
     */
    function bridgeERC20ToHypercore(address token, uint256 amount) external onlyRole(BRIDGE_ROLE) {
        HyperCoreTokenConfig memory config = tokenConfig[token];
        uint256 truncatedAmount = _truncateAmount(amount, config.hyperEVMDecimals, config.hypercoreDecimals);
        if (truncatedAmount != amount) {
            revert DnCoreWriter__AmountMismatch(amount);
        }
        if (config.systemAddress == address(0)) {
            revert DnCoreWriter__TokenNotRegistered(token);
        }

        IERC20Metadata(token).safeTransfer(config.systemAddress, amount);
        emit BridgeERC20Hypercore(token, config.systemAddress, amount);
    }

    /**
     * @notice Bridges HYPE to HyperCore
     * @dev Only callable by addresses with BRIDGE_ROLE
     * @param amount The amount of HYPE to bridge
     */
    function bridgeHYPE(uint256 amount) external onlyRole(BRIDGE_ROLE) {
        uint256 truncatedAmount = _truncateAmount(amount, 18, 8);
        if (truncatedAmount != amount) {
            revert DnCoreWriter__AmountMismatch(amount);
        }
        payable(SYSTEM_ADDRESS).transfer(truncatedAmount);
        emit BridgeHYPE(truncatedAmount);
    }

    /**
     * @notice Withdraws tokens from HyperCore using spot send
     * @dev Only callable by addresses with BRIDGE_ROLE
     * @param token The address of the ERC20 token to withdraw
     * @param amount The amount of tokens to withdraw (in token's native decimals)
     */
    function withdrawTokenFromHyperCore(address token, uint64 amount) external onlyRole(BRIDGE_ROLE) {
        HyperCoreTokenConfig memory config = tokenConfig[token];
        if (config.systemAddress == address(0)) {
            revert DnCoreWriter__TokenNotRegistered(token);
        }

        // Encode the spot send action parameters
        bytes memory encodedAction = abi.encode(config.systemAddress, config.tokenId, amount);

        _sendAction(6, encodedAction);

        // Emit withdrawal event
        emit WithdrawTokenFromHyperCore(config.systemAddress, token, config.tokenId, amount);
    }

    /**
     * @notice Releases tokens for withdrawal
     * @dev Only callable by addresses with WITHDRAWAL_ROLE
     * @param token The address of the ERC20 token to release
     * @param amount The amount of tokens to release
     */
    function releaseTokensForWithdrawals(address token, uint256 amount) external onlyRole(WITHDRAWAL_ROLE) {
        if (midasReceiver == address(0)) {
            revert DnCoreWriter__MidasReceiverNotSet();
        }
        if (!isWithdrawalToken[token]) {
            revert DnCoreWriter__TokenNotWithdrawalToken(token);
        }

        if (token == HYPE) {
            payable(midasReceiver).transfer(amount);
        } else {
            IERC20Metadata(token).safeTransfer(midasReceiver, amount);
        }
        emit ReleaseTokensForWithdrawals(midasReceiver, token, amount);
    }

    /**
     * @notice Wraps HYPE to HyperCore
     * @dev Only callable by addresses with WITHDRAWAL_ROLE
     * @param amount The amount of HYPE to wrap
     */
    function wrapHype(uint256 amount) external onlyRole(WITHDRAWAL_ROLE) {
        WHYPE.deposit{ value: amount }();
    }

    /**
     * @notice Unwraps HYPE from HyperCore
     * @dev Only callable by addresses with WITHDRAWAL_ROLE
     * @param amount The amount of HYPE to unwrap
     */
    function unwrapHype(uint256 amount) external onlyRole(WITHDRAWAL_ROLE) {
        WHYPE.withdraw(amount);
    }

    /**
     * @notice Places a limit order on HyperCore
     * @dev Only callable by addresses with TRADING_AGENT_ROLE
     * @param asset The asset ID for the perpetual
     * @param isBuy True for buy order, false for sell order
     * @param limitPx Limit price as 10^8 * human readable value
     * @param sz Size as 10^8 * human readable value
     * @param reduceOnly Whether this is a reduce-only order
     * @param tif Time in force: 1=Alo, 2=Gtc, 3=Ioc
     * @param cloid Client order ID (0 means no cloid)
     */
    function placeLimitOrder(
        uint32 asset,
        bool isBuy,
        uint64 limitPx,
        uint64 sz,
        bool reduceOnly,
        uint8 tif,
        uint128 cloid
    )
        external
        onlyRole(TRADING_AGENT_ROLE)
    {
        if (!isTradeableAsset[asset]) {
            revert DnCoreWriter__AssetNotTradeable(asset);
        }

        // Encode the limit order action parameters
        bytes memory encodedAction = abi.encode(asset, isBuy, limitPx, sz, reduceOnly, tif, cloid);

        _sendAction(1, encodedAction);

        // Emit order placement event
        emit LimitOrderPlaced(asset, isBuy, limitPx, sz, reduceOnly, tif, cloid);
    }

    /**
     * @notice Transfers USD between spot and perp accounts on HyperCore
     * @dev Only callable by addresses with TRADING_AGENT_ROLE
     * @param ntl The amount to transfer (in native token units)
     * @param toPerp True to transfer from spot to perp, false to transfer from perp to spot
     */
    function usdClassTransfer(uint64 ntl, bool toPerp) external onlyRole(TRADING_AGENT_ROLE) {
        // Encode the USD class transfer action parameters
        bytes memory encodedAction = abi.encode(ntl, toPerp);

        _sendAction(7, encodedAction);
        // Emit USD class transfer event
        emit USDClassTransfer(ntl, toPerp);
    }

    /**
     * @notice Cancels an order by order ID (oid) on HyperCore
     * @dev Only callable by addresses with TRADING_AGENT_ROLE
     * @param asset The asset ID for the perpetual
     * @param oid The order ID to cancel
     */
    function cancelOrderByOid(uint32 asset, uint64 oid) external onlyRole(TRADING_AGENT_ROLE) {
        // Encode the cancel order by oid action parameters
        bytes memory encodedAction = abi.encode(asset, oid);

        _sendAction(10, encodedAction);

        // Emit order cancellation event
        emit OrderCancelledByOid(asset, oid);
    }

    /**
     * @notice Cancels an order by client order ID (cloid) on HyperCore
     * @dev Only callable by addresses with TRADING_AGENT_ROLE
     * @param asset The asset ID for the perpetual
     * @param cloid The client order ID to cancel
     */
    function cancelOrderByCloid(uint32 asset, uint128 cloid) external onlyRole(TRADING_AGENT_ROLE) {
        // Encode the cancel order by cloid action parameters
        bytes memory encodedAction = abi.encode(asset, cloid);

        _sendAction(11, encodedAction);

        // Emit order cancellation event
        emit OrderCancelledByCloid(asset, cloid);
    }

    /**
     * @notice Adds an API wallet to HyperCore
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param walletAddress The address of the API wallet to add
     * @param walletName The name of the API wallet (empty string makes it the main API wallet)
     */
    function addAPIWallet(address walletAddress, string calldata walletName) external onlyRole(ADMIN_ROLE) {
        bytes memory encodedAction = abi.encode(walletAddress, walletName);
        _sendAction(9, encodedAction);
        emit APIWalletAdded(walletAddress, walletName);
    }

    /**
     * @notice Removes an API wallet from HyperCore
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param walletName The name of the API wallet to remove
     */
    function removeAPIWallet(string calldata walletName) external onlyRole(ADMIN_ROLE) {
        bytes memory encodedAction = abi.encode(address(0), walletName);
        _sendAction(9, encodedAction);
        emit APIWalletRemoved(walletName);
    }

    /**
     * @notice Sends an action to HyperCore
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param actionId The ID of the action to send
     * @param encodedAction The encoded action data
     */
    function _sendAction(uint8 actionId, bytes memory encodedAction) internal {
        bytes memory data = new bytes(4 + encodedAction.length);
        data[0] = 0x01; // Version 1
        data[1] = 0x00; // Action ID (big-endian)
        data[2] = 0x00;
        data[3] = bytes1(actionId);

        // Copy encoded action data
        for (uint256 i = 0; i < encodedAction.length; i++) {
            data[4 + i] = encodedAction[i];
        }

        // Send the action to CoreWriter
        ICoreWriter(CORE_WRITER).sendRawAction(data);
    }

    /**
     * @notice Sets the receiver for tokens released for withdrawals
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _midasReceiver The address of the receiver
     */
    function setMidasReceiver(address _midasReceiver) external onlyRole(ADMIN_ROLE) {
        midasReceiver = _midasReceiver;
        emit MidasReceiverSet(_midasReceiver);
    }

    /**
     * @notice Registers a token to HyperCore
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param token The address of the token to register
     * @param systemAddress The address of the system to register the token to
     * @param tokenId The ID of the token
     */
    function registerToken(
        address token,
        address systemAddress,
        uint64 tokenId,
        uint8 hyperEVMDecimals,
        uint8 hypercoreDecimals
    )
        external
        onlyRole(ADMIN_ROLE)
    {
        tokenConfig[token] = HyperCoreTokenConfig({
            tokenId: tokenId,
            systemAddress: systemAddress,
            hyperEVMDecimals: hyperEVMDecimals,
            hypercoreDecimals: hypercoreDecimals
        });
    }

    /**
     * @notice Transfers fees
     * @dev Only callable by addresses with ADMIN_ROLE
     */
    function transferFees() external onlyRole(ADMIN_ROLE) {
        if (feeRecipient == address(0) || feeToken == address(0)) {
            revert DnCoreWriter__FeeRecipientOrFeeTokenNotSet();
        }
        uint256 accumulatedFeesCache = accumulatedFees;
        accumulatedFees = 0;
        IERC20Metadata(feeToken).safeTransfer(feeRecipient, accumulatedFeesCache);
        emit FeesTransferred(feeRecipient, feeToken, accumulatedFeesCache);
    }

    /**
     * @notice Accumulates fees
     * @dev Only callable by addresses with NAV_ORACLE
     * @param amount The amount of fees to accumulate
     */
    function accumulateFees(uint256 amount) external onlyNavOracle {
        accumulatedFees += amount;
        emit FeesAccumulated(amount);
    }

    /**
     * @notice Toggles the withdrawal token status
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param token The address of the token to toggle
     */
    function toggleWithdrawalToken(address token) external onlyRole(ADMIN_ROLE) {
        isWithdrawalToken[token] = !isWithdrawalToken[token];
        emit WithdrawalTokenToggled(token, isWithdrawalToken[token]);
    }

    /**
     * @notice Sets the fee recipient
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _feeRecipient The address of the fee recipient
     */
    function setFeeRecipient(address _feeRecipient) external onlyRole(ADMIN_ROLE) {
        feeRecipient = _feeRecipient;
        emit FeeRecipientSet(_feeRecipient);
    }

    /**
     * @notice Sets the fee token
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _feeToken The address of the fee token
     */
    function setFeeToken(address _feeToken) external onlyRole(ADMIN_ROLE) {
        feeToken = _feeToken;
        emit FeeTokenSet(_feeToken);
    }

    /**
     * @notice Sets the NAV oracle
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param _navOracle The address of the NAV oracle
     */
    function setNavOracle(address _navOracle) external onlyRole(ADMIN_ROLE) {
        navOracle = _navOracle;
        emit NavOracleSet(_navOracle);
    }

    /**
     * @notice Toggles the tradeable asset status
     * @dev Only callable by addresses with ADMIN_ROLE
     * @param asset The asset ID to toggle trading permissions for
     */
    function toggleTradeableAsset(uint32 asset) external onlyRole(ADMIN_ROLE) {
        isTradeableAsset[asset] = !isTradeableAsset[asset];
        emit TradeableAssetToggled(asset, isTradeableAsset[asset]);
    }

    function _truncateAmount(uint256 amount, uint8 fromDecimals, uint8 toDecimals) internal pure returns (uint256) {
        if (toDecimals >= fromDecimals) {
            return amount;
        }
        return amount / 10 ** (fromDecimals - toDecimals) * 10 ** (fromDecimals - toDecimals);
    }

    receive() external payable { }
}
