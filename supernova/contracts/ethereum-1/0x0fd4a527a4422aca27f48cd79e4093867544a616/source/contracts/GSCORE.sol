// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IASSET} from "./interfaces/IASSET.sol";
import {ISHARE} from "./interfaces/ISHARE.sol";

/// @dev STRUCTS
struct RequestDetails {
    address requestor;
    uint256 shareAmount;
    uint256 assetAmount;
    uint256 requestTime;
    bool isProcessed;
}

/// @title GSCORE - House Shares Token @scoreplay.xyz
/// @dev House Shares Token bridgeable with cross-chain capabilities via LayerZero OFT
/// @dev Uses dual accounting system to prevent ERC4626 ratio manipulation during bridging:
/// @dev - ASSET balance = real USDC backing on eth mainnet (1:1)
/// @dev - SHARE balance = shares for ERC4626 vault calculations
/// @dev - GSCORE token supply = bridgeable tokens for OFT cross-chain transfers
/// @dev ASSET and SHARE remain constant during bridging, only GSCORE tokens burn/mint
contract GSCORE is ERC4626, ReentrancyGuard, Ownable {
    using SafeERC20 for ERC20;

    /// @dev STATE
    // constants
    /// @notice Eth mainnet USDC
    IERC20 public constant USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    /// @dev minimum of 10 to redeem
    uint256 public constant MIN_REDEEM_AMOUNT = 10 * 1e6;
    /// @dev minimum of 10 usdc to deposit
    uint256 public constant MIN_DEPOSIT_AMOUNT = 10 * 1e6;
    /// @dev initial deposit cap of 2M GSCORE tokens/shares
    uint256 public constant INITIAL_DEPOSIT_CAP = 2_000_000 * 1e6;
    /// @dev circuit breaker: auto-lock minting if no updates for long
    uint256 public constant ORACLE_STALE_INTERVAL = 48 hours;
    /// @dev circuit breaker: minimum time between rebases (1 hour)
    uint256 public constant CIRCUIT_BREAKER_TIME_THRESHOLD = 1 hours;
    /// @dev circuit breaker: maximum ratio deviation per rebase (0.3% = 0.003 * 1e6)
    uint256 public constant CIRCUIT_BREAKER_MAX_DEVIATION = 0.003 * 1e6;

    address requestProcessor;
    address oracleProvider;
    IASSET ASSET;
    ISHARE SHARE;
    uint256 newRequestId;
    uint256 lastOracleUpdate;
    mapping(uint256 requestId => RequestDetails) requestMapping;
    address multisig;
    uint256 pendingUsdcDebt;
    /// tracks pending USDC that is about to be paid to requestors
    uint256 treasuryBalance;
    /// global deposit cap in GSCORE shares
    uint256 depositCap;

    /// @dev EVENTS
    event RequestSubmitted(RequestDetails requestDetails, uint256 requestId);
    event RequestProcessed(RequestDetails requestDetails, uint256 requestId);
    event Rebase(uint256 mintAmount, uint256 oldRatio, uint256 newRatio);
    event Debase(uint256 burnAmount, uint256 oldRatio, uint256 newRatio);
    event DepositCapUpdated(uint256 newCap);

    /// @dev MODIFIERS
    modifier StaleDataCheck() {
        require(block.timestamp - lastOracleUpdate <= ORACLE_STALE_INTERVAL, "DATA_IS_STALE");
        _;
    }

    modifier OnlyOracleProvider() {
        require(msg.sender == oracleProvider, "NOT_ORACLE_PROVIDER");
        _;
    }

    modifier OnlyOracleProviderOrMultisig() {
        require(msg.sender == oracleProvider || msg.sender == multisig, "NOT_ORACLE_PROVIDER_OR_MULTISIG");
        _;
    }

    modifier OnlyRequestProcessor() {
        require(msg.sender == requestProcessor, "NOT_REQUEST_PROCESSOR");
        _;
    }

    modifier OnlyRequestProcessorOrMultisig() {
        require(msg.sender == requestProcessor || msg.sender == multisig, "NOT_REQUEST_PROCESSOR_OR_MULTISIG");
        _;
    }

    modifier OnlyMultisig() {
        require(msg.sender == multisig, "NOT MULTISIG");
        _;
    }

    /// @dev CONSTRUCTOR & INITIALIZATION
    constructor(
        string memory _name,
        string memory _symbol,
        address _asset,
        address _share,
        address _multisig
    ) 
        ERC20(_name, _symbol)    // initialize ERC20 shares (GSCORE)
        ERC4626(USDC)            // set vault asset to USDC
        Ownable(msg.sender)              // initialize Ownable
    {
        ASSET = IASSET(_asset);
        SHARE = ISHARE(_share);
        multisig = _multisig;
        lastOracleUpdate = block.timestamp; // initialize to avoid immediate stale check
        depositCap = INITIAL_DEPOSIT_CAP; // initialize deposit cap to 2M GSCORE shares
    }

    /// @dev VIEW FUNCTIONS
    function decimals() public pure override(ERC4626) returns (uint8) {
        return 6;
    }

    /// @dev Override totalAssets to return ASSET balance (internal backing) instead of USDC balance
    /// This ensures ratio calculations work correctly even after USDC is bridged out
    function totalAssets() public view override returns (uint256) {
        return ASSET.balanceOf(address(this));
    }

    /// @dev Override totalSupply to return SHARE balance for ERC4626 calculations
    /// This ensures vault ratios work correctly even when HLP0 tokens are bridged
    function totalSupply() public view override(ERC20, IERC20) returns (uint256) {
        return SHARE.balanceOf(address(this));
    }

    /// @dev Get actual GSCORE token supply (used for OFT bridging, separate from ERC4626 accounting)
    function actualTotalSupply() public view returns (uint256) {
        return super.totalSupply();
    }

    /// @dev Get the ratio of ASSET to SHARE
    function ratio() public view returns (uint256) {
        if (totalSupply() == 0) return 1e6;
        return (totalAssets() * 1e6) / totalSupply();
    }

    /// @dev USER FUNCTIONS
    function requestRedeem(uint256 _amountOfShare) public StaleDataCheck {
        uint256 expectedOutput = previewRedeem(_amountOfShare);
        require(expectedOutput >= MIN_REDEEM_AMOUNT, "MIN_AMOUNT_NOT_MET");

        /// @dev burn the GSCORE tokens
        _burn(msg.sender, _amountOfShare);
        /// @dev burn the equivalent SHARE for ERC4626 accounting
        SHARE.burn(_amountOfShare);
        /// @dev burn the equivalent ASSET backing
        ASSET.burn(expectedOutput);
        /// @dev add the expected output to the pending USDC debt
        pendingUsdcDebt += expectedOutput;

        RequestDetails memory request = RequestDetails({
            requestor: msg.sender,
            shareAmount: _amountOfShare,
            assetAmount: expectedOutput,
            requestTime: block.timestamp,
            isProcessed: false
        });
        requestMapping[newRequestId] = request;
        newRequestId++;
        /// @dev emit the request submitted event
        emit RequestSubmitted(request, newRequestId - 1);
    }

    /// @dev REQUEST PROCESSING
    function _processRequest(uint256 _requestId) internal {
        /// @dev get the request details
        RequestDetails storage request = requestMapping[_requestId];
        /// @dev check if the request has already been processed
        require(request.isProcessed == false, "REQUEST ALREADY PROCESSED");
        /// @dev get the request amount
        uint256 assetAmount = request.assetAmount;
        /// @dev ensure contract has enough USDC
        require(USDC.balanceOf(address(this)) >= assetAmount, "INSUFFICIENT USDC BALANCE");
        /// @dev clear the pending USDC debt
        pendingUsdcDebt -= assetAmount;
        /// @dev transfer the request amount from contract to the requestor
        USDC.transfer(request.requestor, assetAmount);
        /// @dev mark the request as processed
        request.isProcessed = true;
        /// @dev emit the request processed event
        emit RequestProcessed(request, _requestId);
    }

    function processRequest(uint256 _requestId) public StaleDataCheck OnlyRequestProcessorOrMultisig {
        _processRequest(_requestId);
    }

    function processRequestsBatch(uint256[] calldata _requestIds) external StaleDataCheck OnlyRequestProcessorOrMultisig {
        for (uint256 i = 0; i < _requestIds.length; i++) {
            _processRequest(_requestIds[i]);
        }
    }

    /// @notice sends idle USDC to multisig
    function sendIdleToTreasury() external OnlyMultisig {
        uint256 usdcBalance = USDC.balanceOf(address(this));
        require(multisig != address(0), "MULTISIG_NOT_SET");
        require(usdcBalance > 0, "NO_USDC_TO_SEND");
        USDC.transfer(multisig, usdcBalance);
    }

    /// @dev ORACLE PROVIDER FUNCTIONS
    function rebase(uint256 _mintAmount) external OnlyOracleProviderOrMultisig {
        // circuit breaker: Check time threshold
        require(
            block.timestamp >= lastOracleUpdate + CIRCUIT_BREAKER_TIME_THRESHOLD,
            "CIRCUIT_BREAKER: TIME_THRESHOLD"
        );
        
        uint256 oldRatio = ratio();
        ASSET.mint(_mintAmount);
        lastOracleUpdate = block.timestamp;
        uint256 newRatio = ratio();
        
        // circuit breaker: Check ratio change doesn't exceed threshold
        require(newRatio - oldRatio <= CIRCUIT_BREAKER_MAX_DEVIATION, "CIRCUIT_BREAKER: DEVIATION_THRESHOLD");
        
        emit Rebase(_mintAmount, oldRatio, newRatio);
    }

    function debase(uint256 _burnAmount) external OnlyOracleProviderOrMultisig {
        uint256 oldRatio = ratio();
        ASSET.burn(_burnAmount);
        uint256 newRatio = ratio();
        
        // global circuit breaker never below 1.0
        require(newRatio >= 1e6, "RATIO BELOW 1.0");
        
        // circuit breaker per rebase (ratio decreases in debase)
        require(oldRatio - newRatio <= CIRCUIT_BREAKER_MAX_DEVIATION, "CIRCUIT_BREAKER: DEVIATION_THRESHOLD");
        
        lastOracleUpdate = block.timestamp;
        emit Debase(_burnAmount, oldRatio, newRatio);
    }


    /// @dev MULTISIG FUNCTIONS
    function setRequestProcessor(address _requestProcessor) external OnlyMultisig {
        requestProcessor = _requestProcessor;
    }

    function setOracleProvider(address _oracleProvider) external OnlyMultisig {
        oracleProvider = _oracleProvider;
    }

    function setMultisig(address _multisig) external OnlyMultisig {
        multisig = _multisig;
    }

    function increaseTreasury(uint256 _amount) external OnlyMultisig {
        _mint(multisig, _amount);
        treasuryBalance += _amount;
    }

    function decreaseTreasury(uint256 _amount) external OnlyMultisig {
        require(treasuryBalance >= _amount, "EXCEEDS_TREASURY_BALANCE");
        _burn(multisig, _amount);
        treasuryBalance -= _amount;
    }

    function setDepositCap(uint256 _newCap) external OnlyMultisig {
        depositCap = _newCap;
        emit DepositCapUpdated(_newCap);
    }

    function adjustDepositCap(int256 _delta) external OnlyMultisig {
        uint256 currentCap = depositCap;
        uint256 newCap;
        
        if (_delta >= 0) {
            newCap = currentCap + uint256(_delta);
        } else {
            newCap = currentCap - uint256(-_delta);
        }
        
        depositCap = newCap;
        emit DepositCapUpdated(newCap);
    }

    /// @dev ERC4626 OVERRIDES
    /// @dev Override deposit to add stale data check and minimum amount validation
    function deposit(uint256 _assets, address _receiver) public override StaleDataCheck returns (uint256) {
        require(_assets >= MIN_DEPOSIT_AMOUNT, "MIN_AMOUNT_NOT_MET");
    
        uint256 sharesToMint = previewDeposit(_assets);
        require(totalSupply() + sharesToMint <= depositCap, "DEPOSIT_CAP_EXCEEDED");
        
        return super.deposit(_assets, _receiver);
    }

    /// @dev Override mint to add stale data check
    function mint(uint256 _shares, address _receiver) public override StaleDataCheck returns (uint256) {
        uint256 assets = previewMint(_shares);
        require(msg.sender != REQUEST_PROCESSOR(), "REQUEST_PROCESSOR_CANNOT_MINT");
        require(assets >= MIN_DEPOSIT_AMOUNT, "MIN_AMOUNT_NOT_MET");

        require(totalSupply() + _shares <= depositCap, "DEPOSIT_CAP_EXCEEDED");
        
        return super.mint(_shares, _receiver);
    }

    /// @dev Override _deposit to mint ASSET backing and SHARE for dual accounting
    function _deposit(address _caller, address _receiver, uint256 _assets, uint256 _shares) internal override {
        // Transfer USDC from caller to this contract (standard ERC4626 behavior)
        SafeERC20.safeTransferFrom(IERC20(asset()), _caller, address(this), _assets);

        // Mint equivalent ASSET backing
        ASSET.mint(_assets);
        // Mint equivalent SHARE for ERC4626 accounting
        SHARE.mint(_shares);
        // Mint GSCORE tokens to receiver (for OFT bridging functionality)
        _mint(_receiver, _shares);

        emit Deposit(_caller, _receiver, _assets, _shares);
    }

    // Override withdraw/redeem to force request model
    function withdraw(uint256, address, address) public pure override returns (uint256) {
        revert("USE_REQUEST_REDEEM");
    }

    function redeem(uint256, address, address) public pure override returns (uint256) {
        revert("USE_REQUEST_REDEEM");
    }


    /// @dev VIEW FUNCTIONS FOR STORAGE VARIABLES
    function REQUEST_PROCESSOR() public view returns (address) {
        return requestProcessor;
    }   

    function ORACLE_PROVIDER() external view returns (address) {
        return oracleProvider;
    }

    function MULTISIG() external view returns (address) {
        return multisig;
    }

    function NEW_REQUEST_ID() external view returns (uint256) {
        return newRequestId;
    }

    function LAST_ORACLE_UPDATE() external view returns (uint256) {
        return lastOracleUpdate;
    }

    function getRequestMapping(uint256 _requestId) external view returns (RequestDetails memory) {
        return requestMapping[_requestId];
    }

    function TREASURY_BALANCE() external view returns (uint256) {
        return treasuryBalance;
    }

    function DEPOSIT_CAP() external view returns (uint256) {
        return depositCap;
    }

    /// @notice Returns available room in GSCORE shares that can still be minted
    /// @return Available shares (not USDC amount) before hitting the cap
    function CAP_LEFT_SHARE() external view returns (uint256) {
        uint256 currentShares = totalSupply();
        return currentShares >= depositCap ? 0 : depositCap - currentShares;
    }

    /// @notice Returns available USDC amount that can be deposited before hitting the share cap
    /// @return Available USDC amount that would result in shares within the cap
    function CAP_LEFT_ASSET() external view returns (uint256) {
        uint256 currentShares = totalSupply();
        if (currentShares >= depositCap) return 0;
        uint256 availableShares = depositCap - currentShares;
        return previewMint(availableShares); // converts shares to assets
    }

    /// @notice Returns the timestamp of the last rebase
    function LAST_REBASE_TIMESTAMP() external view returns (uint256) {
        return lastOracleUpdate;
    }
    /// @notice Returns the time remaining until the next rebase is allowed
    function TIME_UNTIL_NEXT_REBASE() external view returns (uint256) {
        uint256 nextRebaseTime = lastOracleUpdate + CIRCUIT_BREAKER_TIME_THRESHOLD;
        return block.timestamp >= nextRebaseTime ? 0 : nextRebaseTime - block.timestamp;
    }

    /// @notice Returns the maximum allowed ratio for the next rebase based on current ratio
    function RATIO_LEFT_NEXT_REBASE() external view returns (uint256) {
        return ratio() + CIRCUIT_BREAKER_MAX_DEVIATION;
    }

    /// @notice Helper to calculate what the deposit cap would be after an adjustment
    /// @param _delta The adjustment amount (positive or negative)
    /// @return The resulting cap after adjustment, or reverts if invalid
    function previewDepositCapAdjustment(int256 _delta) external view returns (uint256) {
        uint256 currentCap = depositCap;
        
        if (_delta >= 0) {
            uint256 newCap = currentCap + uint256(_delta);
            require(newCap >= currentCap, "WOULD_OVERFLOW");
            return newCap;
        } else {
            uint256 newCap = currentCap - uint256(-_delta);
            require(newCap <= currentCap, "WOULD_UNDERFLOW");
            return newCap;
        }
    }


}
