// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IHLPUSDC} from "./interfaces/IHLPUSDC.sol";
import {IHLPSHARES} from "./interfaces/IHLPSHARES.sol";
import {OFTUpgradeable} from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol";

/// @dev STRUCTS
struct RequestDetails {
    address requestor;
    uint256 hlpAmount;
    uint256 requestAmount;
    uint256 requestTime;
    bool isProcessed;
}

/// @title HyperLiquidity Provider OFT (HLP0) - Upgradeable
/// @dev A wrapper for HLP with cross-chain capabilities via LayerZero OFT
/// @dev Uses dual accounting system to prevent ERC4626 ratio manipulation during bridging:
/// @dev - HLPUSDC balance = real assets in off-chain HLP vault (1:1)
/// @dev - HLPSHARES balance = shares for ERC4626 vault calculations
/// @dev - HLP0 token supply = bridgeable tokens for OFT cross-chain transfers
/// @dev HLPUSDC and HLPSHARES remain constant during bridging, only HLP0 tokens burn/mint
contract HLP0 is ERC4626Upgradeable, OFTUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for ERC20;

    /// @dev STATE
    // constants
    /// @notice Arbitrum USDC
    IERC20 public constant USDC = IERC20(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);
    /// @dev minimum of 100 HLP0 to redeem
    uint256 public constant MIN_REDEEM_AMOUNT = 100 * 1e6;
    /// @dev minimum of 100 usdc to deposit
    uint256 public constant MIN_DEPOSIT_AMOUNT = 100 * 1e6;
    /// @dev oracle stale interval
    uint256 public constant ORACLE_STALE_INTERVAL = 90 minutes;
    /// @dev aggregators
    address public constant ODOS_ROUTER = address(0xa669e7A0d4b3e4Fa48af2dE86BD4CD7126Be4e13);


    /// @dev erc-7201 namespaced storage
    struct Storage {
        address requestProcessor;
        address oracleProvider;
        IHLPUSDC HLPUSDC;
        IHLPSHARES HLPSHARES;
        uint256 newRequestId;
        uint256 lastOracleUpdate;
        mapping(uint256 requestId => RequestDetails) requestMapping;
        address governance;
        uint256 pendingUsdcDebt;
    }
    // keccak256(abi.encode(uint256(keccak256("hlp0.storage.v1")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 public constant STORAGE_LOCATION = 0x632e63c36994fde50a28692a18d8c598076154da1d58d92f102f288e0a379b00;
    function getStorage() internal pure returns (Storage storage $) {
        assembly {
            $.slot := STORAGE_LOCATION
        }
    }

    /// @dev EVENTS
    event RequestSubmitted(RequestDetails requestDetails, uint256 requestId);
    event RequestProcessed(RequestDetails requestDetails, uint256 requestId);
    event Rebase(uint256 mintAmount, uint256 oldRatio, uint256 newRatio);
    event Debase(uint256 burnAmount, uint256 oldRatio, uint256 newRatio);

    /// @dev MODIFIERS
    modifier StaleDataCheck() {
        Storage storage $ = getStorage();
        require(block.timestamp - $.lastOracleUpdate <= ORACLE_STALE_INTERVAL, "DATA IS STALE");
        _;
    }
    modifier OnlyOracleProvider() {
        Storage storage $ = getStorage();
        require(msg.sender == $.oracleProvider, "NOT ORACLE PROVIDER");
        _;
    }
    modifier OnlyRequestProcessor() {
        Storage storage $ = getStorage();
        require(msg.sender == $.requestProcessor, "NOT REQUEST PROCESSOR");
        _;
    }
    modifier OnlyGovernance() {
        Storage storage $ = getStorage();
        require(msg.sender == $.governance, "NOT GOVERNANCE");
        _;
    }
    modifier CallDataGuard() {
        uint256 usdcBalanceBefore = USDC.balanceOf(address(this));
        _;
        uint256 usdcBalanceAfter = USDC.balanceOf(address(this));
        require(usdcBalanceAfter >= usdcBalanceBefore, "CALLDATAGUARD");
    }
    /// @dev CONSTRUCTOR & INITIALIZATION
    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    function initialize(
        string memory _name,
        string memory _symbol,
        address _hlpUsdc,
        address _hlpShares,
        address _delegate,
        address _governance
    ) public initializer {
        __ERC4626_init(USDC);
        __OFT_init(_name, _symbol, _delegate);
        __Ownable_init(_delegate);
        __ReentrancyGuard_init();

        Storage storage $ = getStorage();
        $.HLPUSDC = IHLPUSDC(_hlpUsdc);
        $.HLPSHARES = IHLPSHARES(_hlpShares);
        $.governance = _governance;
        $.lastOracleUpdate = block.timestamp; // initialize to avoid immediate stale check
    }

    /// @dev VIEW FUNCTIONS
    function decimals() public pure override(ERC20Upgradeable, ERC4626Upgradeable) returns (uint8) {
        return 6;
    }

    /// @dev Override totalAssets to return HLPUSDC balance (internal backing) instead of USDC balance
    /// This ensures ratio calculations work correctly even after USDC is bridged out
    function totalAssets() public view override returns (uint256) {
        Storage storage $ = getStorage();
        return $.HLPUSDC.balanceOf(address(this));
    }

    /// @dev Override totalSupply to return HLPSHARES balance for ERC4626 calculations
    /// This ensures vault ratios work correctly even when HLP0 tokens are bridged
    function totalSupply() public view override(ERC20Upgradeable, IERC20) returns (uint256) {
        Storage storage $ = getStorage();
        return $.HLPSHARES.balanceOf(address(this));
    }

    /// @dev Get actual HLP0 token supply (used for OFT bridging, separate from ERC4626 accounting)
    function actualTotalSupply() public view returns (uint256) {
        return super.totalSupply();
    }

    /// @dev Get the ratio of HLPUSDC to HLPSHARES
    function ratio() public view returns (uint256) {
        if (totalSupply() == 0) return 1e6;
        return (totalAssets() * 1e6) / totalSupply();
    }

    /// @dev USER FUNCTIONS
    function requestRedeem(uint256 _amountOfHLP) public nonReentrant StaleDataCheck {
        uint256 expectedOutput = previewRedeem(_amountOfHLP);
        require(expectedOutput >= MIN_REDEEM_AMOUNT, "MIN_AMOUNT not met");
        
        Storage storage $ = getStorage();
        
        /// @dev burn the HLP0 tokens
        _burn(msg.sender, _amountOfHLP);
        /// @dev burn the equivalent HLPSHARES for ERC4626 accounting
        $.HLPSHARES.burn(_amountOfHLP);
        /// @dev burn the equivalent HLPUSDC backing
        $.HLPUSDC.burn(expectedOutput);
        /// @dev add the expected output to the pending USDC debt
        $.pendingUsdcDebt += expectedOutput;

        
        RequestDetails memory request = RequestDetails({
            requestor: msg.sender,
            hlpAmount: _amountOfHLP,
            requestAmount: expectedOutput,
            requestTime: block.timestamp,
            isProcessed: false
        });
        $.requestMapping[$.newRequestId] = request;
        $.newRequestId++;
        /// @dev emit the request submitted event
        emit RequestSubmitted(request, $.newRequestId - 1);
    }

    /// @dev REQUEST PROCESSING
    function _processRequest(uint256 _requestId) internal {
            Storage storage $ = getStorage();
        /// @dev get the request details
        RequestDetails storage request = $.requestMapping[_requestId];
        /// @dev check if the request has already been processed
        require(request.isProcessed == false, "REQUEST ALREADY PROCESSED");
        /// @dev get the request amount
        uint256 requestAmount = request.requestAmount;
        /// @dev clear the pending USDC debt
        $.pendingUsdcDebt -= requestAmount;
        /// @dev transfer the request amount from the request processor to the requestor
        SafeERC20.safeTransferFrom(USDC, $.requestProcessor, request.requestor, requestAmount);
        /// @dev mark the request as processed
        request.isProcessed = true;
        /// @dev emit the request processed event
        emit RequestProcessed(request, _requestId);
    }

    function processRequest(uint256 _requestId) public nonReentrant StaleDataCheck OnlyRequestProcessor {
        _processRequest(_requestId);
    }

    function processRequestsBatch(uint256[] calldata _requestIds) external nonReentrant StaleDataCheck OnlyRequestProcessor {
        for (uint256 i = 0; i < _requestIds.length; i++) {
            _processRequest(_requestIds[i]);
        }
    }
    

    /// @dev AMO ensures all LPs trade at fair value and all revenue is fully reinvested back in the vault
    function amoIncreaseBacking(uint256 _amountIn, bytes calldata _odosCallData) external OnlyRequestProcessor CallDataGuard {
       Storage storage $ = getStorage();
       /// buy LP cheaper than the current ratio
       IERC20(USDC).approve(ODOS_ROUTER, _amountIn);
       (bool success, ) = ODOS_ROUTER.call(_odosCallData);
       require(success, "ODOS_ROUTER_CALL_FAILED");
       /// redeem that HLP0 to get more USDC
       uint256 hlp0BalanceAfterSwap = balanceOf(address(this));
       requestRedeem(hlp0BalanceAfterSwap);
       processRequest($.newRequestId);
    }

    /// @notice used by the contract to allow bridging of the USDC backing to Hyperliquid without native write-precompiles yet
    /// send to request processor
    function startBridgingBacking() external OnlyRequestProcessor {
        Storage storage $ = getStorage();
        uint256 usdcBalance = USDC.balanceOf(address(this));
        require($.requestProcessor != address(0), "REQUEST PROCESSOR NOT SET");
        /// transfer the USDC balance to the request processor
        USDC.transfer($.requestProcessor, usdcBalance);
    }

    /// @dev ORACLE PROVIDER FUNCTIONS
    function updateOracleTimestamp() external OnlyOracleProvider {
        Storage storage $ = getStorage();
        $.lastOracleUpdate = block.timestamp;
    }

    function rebase(uint256 _mintAmount) external OnlyOracleProvider {
        Storage storage $ = getStorage();
        uint256 oldRatio = ratio();
        $.HLPUSDC.mint(_mintAmount);
        $.lastOracleUpdate = block.timestamp; 
        uint256 newRatio = ratio();
        emit Rebase(_mintAmount, oldRatio, newRatio);
    }

    function debase(uint256 _burnAmount) external OnlyOracleProvider {
        Storage storage $ = getStorage();
        uint256 oldRatio = ratio();
        $.HLPUSDC.burn(_burnAmount);
        require(ratio() >= 1e6, "RATIO BELOW 1.0");
        $.lastOracleUpdate = block.timestamp; 
        uint256 newRatio = ratio();
        emit Debase(_burnAmount, oldRatio, newRatio);
    }

    /// @dev GOVERNANCE FUNCTIONS
    function setRequestProcessor(address _requestProcessor) external OnlyGovernance {
        Storage storage $ = getStorage();
        $.requestProcessor = _requestProcessor;
    }

    function setOracleProvider(address _oracleProvider) external OnlyGovernance {
        Storage storage $ = getStorage();
        $.oracleProvider = _oracleProvider;
    }

    function setGovernance(address _governance) external OnlyGovernance {
        Storage storage $ = getStorage();
        $.governance = _governance;
    }

    /// @dev ERC4626 OVERRIDES
    /// @dev Override deposit to add stale data check and minimum amount validation
    function deposit(uint256 _assets, address _receiver) public override nonReentrant StaleDataCheck returns (uint256) {
        require(_assets >= MIN_DEPOSIT_AMOUNT, "MIN_AMOUNT not met");
        return super.deposit(_assets, _receiver);
    }

    /// @dev Override mint to add stale data check  
    function mint(uint256 _shares, address _receiver) public override nonReentrant StaleDataCheck returns (uint256) {
        uint256 assets = previewMint(_shares);
        require(assets >= MIN_DEPOSIT_AMOUNT, "MIN_AMOUNT not met");
        return super.mint(_shares, _receiver);
    }

    /// @dev Override _deposit to mint HLPUSDC backing and HLPSHARES for dual accounting
    function _deposit(address _caller, address _receiver, uint256 _assets, uint256 _shares) internal override {
        // Transfer USDC from caller to this contract (standard ERC4626 behavior)
        SafeERC20.safeTransferFrom(IERC20(asset()), _caller, address(this), _assets);
        
        Storage storage $ = getStorage();
        // Mint equivalent HLPUSDC backing
        $.HLPUSDC.mint(_assets);
        // Mint equivalent HLPSHARES for ERC4626 accounting
        $.HLPSHARES.mint(_shares);
        // Mint HLP0 tokens to receiver (for OFT bridging functionality)
        _mint(_receiver, _shares);

        emit Deposit(_caller, _receiver, _assets, _shares);
    }

    // Override withdraw/redeem to force request model
    function withdraw(uint256, address, address) public pure override returns (uint256) {
        revert("USE REQUEST REDEEM");
    }

    function redeem(uint256, address, address) public pure override returns (uint256) {
        revert("USE REQUEST REDEEM");
    }

    /// @dev VIEW FUNCTIONS FOR STORAGE VARIABLES
    function REQUEST_PROCESSOR() external view returns (address) {
        Storage storage $ = getStorage();
        return $.requestProcessor;
    }

    function ORACLE_PROVIDER() external view returns (address) {
        Storage storage $ = getStorage();
        return $.oracleProvider;
    }

    function GOVERNANCE() external view returns (address) {
        Storage storage $ = getStorage();
        return $.governance;
    }

    function HLPUSDC() external view returns (address) {
        Storage storage $ = getStorage();
        return address($.HLPUSDC);
    }

    function HLPSHARES() external view returns (address) {
        Storage storage $ = getStorage();
        return address($.HLPSHARES);
    }

    function NEW_REQUEST_ID() external view returns (uint256) {
        Storage storage $ = getStorage();
        return $.newRequestId;
    }

    function LAST_ORACLE_UPDATE() external view returns (uint256) {
        Storage storage $ = getStorage();
        return $.lastOracleUpdate;
    }

    function getRequestMapping(uint256 _requestId) external view returns (RequestDetails memory) {
        Storage storage $ = getStorage();
        return $.requestMapping[_requestId];
    }

    function pendingUsdcDebt() external view returns (uint256) {
        Storage storage $ = getStorage();
        return $.pendingUsdcDebt;
    }


}
