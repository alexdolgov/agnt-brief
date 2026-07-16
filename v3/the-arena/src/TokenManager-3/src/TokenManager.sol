// SPDX-License-Identifier: UNLICENSED
/*
 * DISCLAIMER:
 * This is a prototype smart contract for informational and testing purposes only.
 * It is NOT the final or production-ready version. Do NOT use this contract or interact with it in any way.
 * Any funds sent to this contract may be lost forever.
 *
 * LICENSE:
 * Unauthorized copying, reproduction, or reuse of this source code, in whole or in part, is strictly prohibited.
 * The content is protected under applicable intellectual property laws. All rights reserved.
 */

pragma solidity 0.8.23;
import {IArenaPoolDeployer} from "./interfaces/IArenaPoolDeployer.sol";
import {IArenaFeeHelperMinimal} from "./interfaces/IArenaFeeHelperMinimal.sol";
import {IUniswapV2Router02} from "./interfaces/IUniswapV2Router02.sol";
import {IUniswapV2Factory} from "./interfaces/IUniswapV2Factory.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ITokenFactory} from "./interfaces/ITokenFactory.sol";
import {ITokenTemplate} from "./interfaces/ITokenTemplate.sol";


interface IWAVAX {
    function deposit() external payable;
}

interface IReferrerRegistry {
    function getReferrer(address _referee) external view returns (address);
}

/**
 * @title TokenManager
 * @dev Manages the creation and management of tokens with bonding curves and associated tokens.
 */
contract TokenManager is OwnableUpgradeable, UUPSUpgradeable, PausableUpgradeable {
    // Constants
    uint256 public constant GRANULARITY_SCALER = 10 ** 18; // 1 token min granularity
    uint8 public constant MAX_FEE_BASIS_POINT = 250; // max 2.5 percent
    uint256 public constant INITIAL_TOKEN_ID = 1;
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address public constant STAKER_REWARD_TOKEN_VAULT = 0x568289B3f3bA28042C5fc527b31CD37fA138e131;
    address public constant WAVAX_ADDRESS = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address public constant ARENA_TOKEN_ADDRESS = 0xB8d7710f7d8349A506b75dD184F05777c82dAd0C;

    uint256 public constant MAX_CREATOR_FEE_BASIS_POINT = 250; // max 2.5 percent

    uint256 public tokenIdentifier;
    address public protocolFeeDestination;
    uint8 public protocolFeeBasisPoint; // (1/10000)
    uint8 public referralFeeBasisPoint; // (1/10000)
    bool public canDeployLp;
    IUniswapV2Router02 public uniswapV2Router02;
    ITokenFactory public tokenFactory;
    address public tokenCreationBuyFeeVault;
    uint88 public tokenCreationBuyFeeAmount;
    bool public transferTokenCreationBuyFeeToVault;
    uint256[99] private __gap; // Reserve space for future variables

    /**
     * ERRORS
     */
    error InvalidFeeSetting();
    error InsufficentFunds();
    error CurveParametersNotAllowed();
    error TokenSplitNotAllowed();

    /**
     * EVENTS
     */
    event TokenCreated(uint256 tokenId, TokenParameters params, uint256 tokenSupply);
    event Sell(
        address user,
        uint256 tokenId,
        uint256 tokenAmount,
        uint256 reward,
        uint256 tokenSupply,
        address referrerAddress,
        uint256 referralFee,
        uint256 creatorFee,
        uint256 protocolFee
    );
    event Buy(
        address user,
        uint256 tokenId,
        uint256 tokenAmount,
        uint256 cost,
        uint256 tokenSupply,
        address referrerAddress,
        uint256 referralFee,
        uint256 creatorFee,
        uint256 protocolFee
    );

    event TokenLPCreated(uint256 tokenId, uint256 amountToken, uint256 amountAVAX, uint256 liquidity);

    event ProtocolFeeBasisPointSet(uint256 oldBasisPoint, uint256 newBasisPoint);
    event ReferralFeeBasisPointSet(uint256 oldBasisPoint, uint256 newBasisPoint);
    event AllowedTokenSupplyForParamsSet(
        uint256 a, uint256 b, uint256 curveScaler, uint256 tokenSupply, uint256 tokenSplit
    );
    event ProtocolFeeDestinationSet(address oldDestination, address newDestination);
    event LPDeployPermissionSet(bool value);
    event ReferrerSet(address user, address referrer);
    event TokenFactorySet(address oldTokenFactoryAddress, address newTokenFactory);
    event TokenCreationBuyFeeParamsSet(address tokenCreationBuyFeeVault, uint88 tokenCreationBuyFeeAmount, bool transferTokenCreationBuyFeeToVault);

    /**
     * MODIFIERS
     */

    modifier lpNotDeployed(uint256 _tokenId) {
        require(tokenParams[_tokenId].lpDeployed == false, "LP already deployed!");
        _;
    }

    /**
     * GLOBALS
     */
    struct TokenParameters {
        uint128 curveScaler;
        uint16 a; // quadratic multiplier
        uint8 b; // linear multiplier
        bool lpDeployed;
        uint8 lpPercentage;
        uint8 salePercentage;
        uint8 creatorFeeBasisPoints;
        address creatorAddress;
        address pairAddress;
        address tokenContractAddress;
    }

    struct FeeData {
        uint256 protocolFee;
        uint256 creatorFee;
        uint256 referralFee;
        uint256 totalFeeAmount;
        address tokenCreator;
        address referrerAddress;
    }

    struct V4PoolInitParams {
        IArenaPoolDeployer.PoolInitParams poolInitParams;
        uint16 creatorFeePpm;
        uint160 invertedStartingPrice;
    }

    mapping(uint256 => TokenParameters) public tokenParams;
    mapping(uint256 => uint256) public tokenBalanceOf;
    mapping(address => address) public referrers;
    mapping(bytes32 => uint256) public allowedTokenSupplyWithParameters; // in wei
    mapping(uint256 => uint256) public tokenSupply; // in wei
    address public LP_TOKEN_VAULT;
    IArenaPoolDeployer public arenaPoolDeployer;
    V4PoolInitParams public v4PoolInitParams;
    IReferrerRegistry public referrerRegistry;
    /**
     * @dev Constructor that disables initializers to prevent the implementation contract from being initialized.
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the contract with the given Uniswap V2 Router and Arena Contract addresses.
     * @param uniswapV2RouterAddress The address of the Uniswap V2 Router.
     */
    function initialize(address uniswapV2RouterAddress, address ownerAddress, address tokenFactoryContractAddress)
        public
        initializer
    {
        __Ownable_init(ownerAddress);
        __UUPSUpgradeable_init();
        __Pausable_init();
        uniswapV2Router02 = IUniswapV2Router02(uniswapV2RouterAddress);
        tokenIdentifier = INITIAL_TOKEN_ID;
        tokenFactory = ITokenFactory(tokenFactoryContractAddress);
        canDeployLp = true;
    }

    /**
     * @notice Authorizes the upgrade of the contract.
     * @param newImplementation The address of the new implementation.
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /**
     * @notice Sets the referral fee percentage.
     * @param _feeBasisPoint The referral fee in basis points (1/10000).
     */
    function setReferralFeeBasisPoint(uint8 _feeBasisPoint) external onlyOwner {
        if (_feeBasisPoint > MAX_FEE_BASIS_POINT) {
            revert InvalidFeeSetting();
        }
        uint8 oldFeeBasisPoint = referralFeeBasisPoint;
        referralFeeBasisPoint = _feeBasisPoint;
        emit ReferralFeeBasisPointSet(oldFeeBasisPoint, _feeBasisPoint);
    }

    function setLpTokenVault(address _lpTokenVault) external onlyOwner {
        LP_TOKEN_VAULT = _lpTokenVault;
    }

    function setArenaPoolDeployer(address _arenaPoolDeployer) external onlyOwner {
        arenaPoolDeployer = IArenaPoolDeployer(_arenaPoolDeployer);
    }

    function setReferrerRegistry(address _referrerRegistry) external onlyOwner {
        referrerRegistry = IReferrerRegistry(_referrerRegistry);
    }
   /**
   
    * @notice This is the case for wavax is token0, thus everything is positive and the inverted is smaller than the .
    * @param _poolInitParams The pool initialization parameters.
    * @param _creatorFeePpm The creator fee in basis points.
    * @param _invertedStartingPrice The inverted starting price.
    */
    function setPoolInitParams(IArenaPoolDeployer.PoolInitParams calldata _poolInitParams, uint16 _creatorFeePpm, uint160 _invertedStartingPrice) external onlyOwner {
        v4PoolInitParams.poolInitParams = _poolInitParams;
        v4PoolInitParams.creatorFeePpm = _creatorFeePpm;
        v4PoolInitParams.invertedStartingPrice = _invertedStartingPrice;
        require(_invertedStartingPrice < v4PoolInitParams.poolInitParams.startingPrice, "Inverted starting price must be greater than starting price");
    }

    /**
     * @notice Sets allowed parameters for the bonding curve.
     * @param a Quadratic multiplier.
     * @param b Linear multiplier.
     * @param c Curve scaler.
     * @param allowedtokenSupply tokenSupply in wei.
     * @param tokenSplit allowed token split (0-100)
     */
    function setAllowedTokenSupplyForParameters(uint16 a, uint8 b, uint128 c, uint256 allowedtokenSupply, uint256 tokenSplit)
        external
        onlyOwner
    {
        require(c != 0, "Invalid c coefficient");
        require(!(a > 0 && b > 0), "Invalid parameters");
        require(!(a == 0 && b == 0), "Both a and b are zero, should revert");
        require((tokenSplit <= 80) && (tokenSplit >= 60), "Token split must be smaller");
        require(allowedtokenSupply % 1e18 == 0,"allowedtokenSupply must be divisible by 1e18");
        bytes32 paramatersAndSupplyHash = keccak256(abi.encodePacked(a, b, c, tokenSplit));
        allowedTokenSupplyWithParameters[paramatersAndSupplyHash] = allowedtokenSupply;
        emit AllowedTokenSupplyForParamsSet(a, b, c, allowedtokenSupply, tokenSplit);
    }

    function setLpDeployPermission(bool value) external onlyOwner {
        canDeployLp = value;
        emit LPDeployPermissionSet(value);
    }

    /**
     * @notice Sets the protocol fee in basis points.
     * @param _feeBasisPoint The protocol fee in basis point (1/10000).
     */
    function setProtocolFeeBasisPoint(uint8 _feeBasisPoint) external onlyOwner {
        if (_feeBasisPoint > MAX_FEE_BASIS_POINT) {
            revert InvalidFeeSetting();
        }
        uint8 oldFeeBasisPoint = protocolFeeBasisPoint;
        protocolFeeBasisPoint = _feeBasisPoint;
        emit ProtocolFeeBasisPointSet(oldFeeBasisPoint, _feeBasisPoint);
    }

    /**
     * @notice Sets the fee destination address.
     * @param _feeDestination The address to set as the fee destination.
     */
    function setFeeDestination(address _feeDestination) external onlyOwner {
        require(_feeDestination != address(0), "Invalid fee destination");
        address oldDestination = protocolFeeDestination;
        protocolFeeDestination = _feeDestination;
        emit ProtocolFeeDestinationSet(oldDestination, _feeDestination);
    }

    function setTokenFactory(address _newTokenFactory) external onlyOwner {
        address oldTokenFactoryAddress = address(tokenFactory);
        tokenFactory = ITokenFactory(_newTokenFactory);
        emit TokenFactorySet(oldTokenFactoryAddress,_newTokenFactory);
    }

    function setRouter02(address _newRouter02) external onlyOwner { // still required if autoswap is enabled in token creation fee
        uniswapV2Router02 = IUniswapV2Router02(_newRouter02);
    }

    /**
     * @notice Triggers the stopped state.
     * @dev Only the owner can call this function. When called, it will pause all functions that are guarded by the `whenNotPaused` modifier.
     */
    function pause() public onlyOwner {
        _pause();
    }

    /**
     * @notice Returns the contract to the normal state.
     * @dev Only the owner can call this function. When called, it will unpause all functions that are guarded by the `whenNotPaused` modifier.
     */
    function unpause() public onlyOwner {
        _unpause();
    }

    /**
     * @notice Renouncing ownership is not allowed for this contract.
     */
    function renounceOwnership() public override onlyOwner {}

    /**
     * @notice Sets the initial buy fee, slippage tolerance and whether to transfer the initial buy fee to the vault.
     * @param _tokenCreationBuyFeeVault The vault to transfer the token creation buy fee to.
     * @param _tokenCreationBuyFeeAmount The token creation buy fee amount.
     * @param _transferTokenCreationBuyFeeToVault Whether to transfer the token creation buy fee to the vault.
     */
    function setTokenCreationBuyFeeParams(address _tokenCreationBuyFeeVault, uint88 _tokenCreationBuyFeeAmount, bool _transferTokenCreationBuyFeeToVault) external onlyOwner {
        require(_tokenCreationBuyFeeVault != address(0), "Invalid token creation buy fee vault");
        tokenCreationBuyFeeAmount = _tokenCreationBuyFeeAmount;
        transferTokenCreationBuyFeeToVault = _transferTokenCreationBuyFeeToVault;
        tokenCreationBuyFeeVault = _tokenCreationBuyFeeVault;
        emit TokenCreationBuyFeeParamsSet(_tokenCreationBuyFeeVault, _tokenCreationBuyFeeAmount, _transferTokenCreationBuyFeeToVault);
    }

    function createTokenWithWL(
        uint16 a,
        uint8 b,
        uint128 curveScaler,
        uint8 creatorFeeBasisPoints,
        address tokenCreatorAddress,
        uint256 tokenSplit,
        string memory name,
        string memory symbol,
        uint256 amount,
        ITokenTemplate.Whitelist calldata whitelist
    ) external payable {
        createToken(
            a,
            b,
            curveScaler,
            creatorFeeBasisPoints,
            tokenCreatorAddress,
            tokenSplit,
            name,
            symbol,
            amount
        );
        ITokenTemplate(tokenParams[tokenIdentifier - 1].tokenContractAddress).setWhitelistedAddresses(whitelist);
    }

    function extendWhitelist(uint256 _tokenId, address[] calldata _addresses) external {
        require(OwnableUpgradeable(tokenParams[_tokenId].tokenContractAddress).owner() == address(this), "Token not deployed by this contract");
        require(tokenParams[_tokenId].creatorAddress == msg.sender, "Only creator can extend whitelist");
        ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).extendWhitelist(_addresses);
    }

    /**
     * @notice Creates a new token with the specified parameters.
     * @param a Quadratic multiplier.
     * @param b Linear multiplier.
     * @param creatorFeeBasisPoints creator fees in basis points, 1 percent is 100, max MAX_CREATOR_FEE_BASIS_POINT
     * @param curveScaler Curve scaler.
     * @param tokenSplit The token split, sale percentage threshold.
     * @param name The name of the token.
     * @param symbol The symbol of the token.
     * @param amount The initial amount of tokens to buy.
     */
    function createToken(
        uint16 a,
        uint8 b,
        uint128 curveScaler,
        uint8 creatorFeeBasisPoints,
        address tokenCreatorAddress,
        uint256 tokenSplit,
        string memory name,
        string memory symbol,
        uint256 amount
    ) public payable whenNotPaused {
        if (creatorFeeBasisPoints > MAX_CREATOR_FEE_BASIS_POINT) {
            revert InvalidFeeSetting();
        }
        require(creatorFeeBasisPoints == 0, "Creator fees are disabled currently");
        require(tokenCreatorAddress != address(0), "Token creator address must be set");

        if (amount == 0) {
            require(msg.value == 0, "Invalid msg.value");
        }

        uint256 allowedSupply = allowedTotalSupplyWithParameters(a, b, curveScaler, tokenSplit);
        require(allowedSupply != 0, "There is no registered token supply");
        tokenSupply[tokenIdentifier] = allowedSupply;

        address tokenContractAddress = tokenFactory.deployToken(name, symbol, tokenIdentifier);

        tokenParams[tokenIdentifier].a = a;
        tokenParams[tokenIdentifier].b = b;
        tokenParams[tokenIdentifier].curveScaler = curveScaler;
        tokenParams[tokenIdentifier].creatorFeeBasisPoints = creatorFeeBasisPoints;
        tokenParams[tokenIdentifier].tokenContractAddress = tokenContractAddress;
        tokenParams[tokenIdentifier].pairAddress = address(0);
        tokenParams[tokenIdentifier].creatorAddress = tokenCreatorAddress;
        tokenParams[tokenIdentifier].lpPercentage = 100 - uint8(tokenSplit);
        tokenParams[tokenIdentifier].salePercentage = uint8(tokenSplit);

        // token creation event must come before buy event
        emit TokenCreated(tokenIdentifier, tokenParams[tokenIdentifier], allowedSupply);
        if (amount > 0) {
            _handleInitialBuyFee();
            buyAndCreateLpIfPossible(amount, tokenIdentifier);
        }

        tokenIdentifier++;
    }

    /**
     * @notice Buys tokens for the specified token.
     * @param amount The amount of tokens to buy.
     * @param _tokenId The ID of the token to buy tokens from.
     * @dev There is no slippage check and this intended.
     */
    function _buy(uint256 amount, uint256 _tokenId) internal whenNotPaused lpNotDeployed(_tokenId) {
        require(amount % GRANULARITY_SCALER == 0, "Amount must be a multiple of GRANULARITY_SCALER");
        amount = amount / GRANULARITY_SCALER;
        uint256 currentSupply;
        {
            uint256 currentSupplyInWei = ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).totalSupply();
            (uint256 maxBuyableAmountInWei, uint256 maxTokensForSaleInWei) =
                _getMaxTokensForSaleWithSupply(_tokenId, currentSupplyInWei);
            uint256 maxBuyableAmount = maxBuyableAmountInWei / GRANULARITY_SCALER;
            uint256 maxTokensForSale = maxTokensForSaleInWei / GRANULARITY_SCALER;
            if (amount > maxBuyableAmount) {
                amount = maxBuyableAmount;
            }
            currentSupply = currentSupplyInWei / GRANULARITY_SCALER;
            // sanity check
            require(currentSupply + amount <= maxTokensForSale, "supply mismatch in buy");
        }
        require(amount > 0, "amount must be greater than 0");
        uint256 costs = calculateCostWithSupply(amount, _tokenId, currentSupply);
        FeeData memory feeData = getFeeData(_tokenId, costs, msg.sender);
        uint256 totalCost = feeData.totalFeeAmount + costs;
        if (totalCost > msg.value) {
            revert InsufficentFunds();
        }
        ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).mint(msg.sender, amount * GRANULARITY_SCALER);
        tokenBalanceOf[_tokenId] += costs;
        _handleFeeTransfers(feeData, totalCost);
        emit Buy(
            msg.sender,
            _tokenId,
            amount,
            totalCost,
            currentSupply + amount,
            feeData.referrerAddress,
            feeData.referralFee,
            feeData.creatorFee,
            feeData.protocolFee
        );
    }

    /**
     * @notice Buys tokens for the specified token.
     * @param amount The amount of tokens to buy.
     * @param _tokenId The ID of the token to buy tokens from.
     * @dev this function doesnt duplicate the whenNotPaused & lpNotDeployed modifiers
     * and relies on buy to enforce them. Any further development needs to keep that in mind.
     * @dev There is no slippage check and this intended.
     */
    function buyAndCreateLpIfPossible(uint256 amount, uint256 _tokenId) public payable {
        _buy(amount, _tokenId);
        if (_isLpTokenThresholdReached(_tokenId)) {
            _createLp(_tokenId);
        }
    }


    /**
     * @notice Buys tokens for the specified token.
     * @param amount The amount of tokens to buy.
     * @param _tokenId The ID of the token to buy tokens from.
     * @param referrer The refferer address of the user
     * @dev this function doesnt duplicate the whenNotPaused & lpNotDeployed modifiers
     * and relies on buy to enforce them. Any further development needs to keep that in mind.
     * @dev There is no slippage check and this intended.
     */
    function buyWithReferrerAndCreateLpIfPossible(uint256 amount, uint256 _tokenId, address referrer)
        external
        payable
    {
        // TODO REMOVE
        buyAndCreateLpIfPossible(amount, _tokenId);
    }


    /**
     * @notice Sells tokens for the specified token.
     * @param amount The amount of tokens to sell.
     * @param _tokenId The ID of the token to sell tokens from.
     * @dev There is no slippage check and this intended.
     */
    function sell(uint256 amount, uint256 _tokenId) public whenNotPaused lpNotDeployed(_tokenId) {
        require(amount % GRANULARITY_SCALER == 0, "Amount must be a multiple of GRANULARITY_SCALER");
        amount = amount / GRANULARITY_SCALER;
        require(amount > 0, "amount must be greater than zero");
        (uint256 reward, uint256 currentSupply) = calculateRewardAndSupply(amount, _tokenId);
        FeeData memory feeData = getFeeData(_tokenId, reward, msg.sender);
        ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).burn(msg.sender, amount * GRANULARITY_SCALER);
        tokenBalanceOf[_tokenId] -= (reward);
        _handleFeeTransfers(feeData, 0);
        payable(msg.sender).transfer(reward - feeData.totalFeeAmount);
        emit Sell(
            msg.sender,
            _tokenId,
            amount,
            reward,
            currentSupply - amount,
            feeData.referrerAddress,
            feeData.referralFee,
            feeData.creatorFee,
            feeData.protocolFee
        );
    }

    /**
     * @notice Sells tokens for the specified token.
     * @param amount The amount of tokens to sell.
     * @param _tokenId The ID of the token to sell tokens from.
     * @param referrer The refferer address of the user
     * @dev There is no slippage check and this intended.
     */
    function sellWithReferrer(uint256 amount, uint256 _tokenId, address referrer) external {
        // TODO REMOVE
        sell(amount, _tokenId);
    }



    function _createLp(uint256 _tokenId) internal {
        require(canDeployLp, "Lp deploy not allowed right now!");
        TokenParameters memory paramsCached = tokenParams[_tokenId];
        require(paramsCached.lpDeployed == false, "Lp already deployed");
        tokenParams[_tokenId].lpDeployed = true;

        uint256 allowedMaxSupply = tokenSupply[_tokenId];
        uint256 onePercent = allowedMaxSupply / 100;
        uint256 stakerRewards = (onePercent * 25) / 10; // 2.5 percent
        uint256 tokenAmount = onePercent * paramsCached.lpPercentage - stakerRewards;
        uint256 avaxAmount = tokenBalanceOf[_tokenId];
        tokenBalanceOf[_tokenId] = 0;
        if(paramsCached.pairAddress != address(0)) { // dont lock v2 dex
            ITokenTemplate(paramsCached.tokenContractAddress).setBlacklistStatus(paramsCached.pairAddress, false);
        }

        ITokenTemplate(paramsCached.tokenContractAddress).mint(address(this), tokenAmount);

        ITokenTemplate(paramsCached.tokenContractAddress).mint(STAKER_REWARD_TOKEN_VAULT, stakerRewards);
        IArenaFeeHelperMinimal.Fee[] memory fees = new IArenaFeeHelperMinimal.Fee[](1);
        V4PoolInitParams memory v4PoolInitParamsCached = v4PoolInitParams;
        fees[0] = IArenaFeeHelperMinimal.Fee({
            recipient: paramsCached.creatorAddress,
            feePpm: v4PoolInitParamsCached.creatorFeePpm
        });
        IWAVAX(WAVAX_ADDRESS).deposit{value: avaxAmount}();
        ITokenTemplate(paramsCached.tokenContractAddress).approve(address(arenaPoolDeployer), tokenAmount);
        ITokenTemplate(WAVAX_ADDRESS).approve(address(arenaPoolDeployer), avaxAmount);

        v4PoolInitParamsCached.poolInitParams.recipient = LP_TOKEN_VAULT;
        v4PoolInitParamsCached.poolInitParams.hookData = bytes("");
        // invert the starting price, lower and upper tick if wavax is token1, 
        if(WAVAX_ADDRESS > paramsCached.tokenContractAddress) {
            v4PoolInitParamsCached.poolInitParams.startingPrice = v4PoolInitParamsCached.invertedStartingPrice;
            int24 tickLowerCached = int24(v4PoolInitParamsCached.poolInitParams.tickLower);
            v4PoolInitParamsCached.poolInitParams.tickLower = -v4PoolInitParamsCached.poolInitParams.tickUpper;
            v4PoolInitParamsCached.poolInitParams.tickUpper = -tickLowerCached;
            v4PoolInitParamsCached.poolInitParams.token0Amount = tokenAmount;
            v4PoolInitParamsCached.poolInitParams.token1Amount = avaxAmount;
            v4PoolInitParamsCached.poolInitParams.token0 = paramsCached.tokenContractAddress;
            v4PoolInitParamsCached.poolInitParams.token1 = WAVAX_ADDRESS;
        }
        else { // wavax is token0, default params
            v4PoolInitParamsCached.poolInitParams.token0Amount = avaxAmount;
            v4PoolInitParamsCached.poolInitParams.token1Amount = tokenAmount;
            v4PoolInitParamsCached.poolInitParams.token0 = WAVAX_ADDRESS;
            v4PoolInitParamsCached.poolInitParams.token1 = paramsCached.tokenContractAddress;
        }
        arenaPoolDeployer.initPoolAndSetFees(v4PoolInitParamsCached.poolInitParams, fees);
    
        OwnableUpgradeable(paramsCached.tokenContractAddress).renounceOwnership();
        // sanity check to ensure the projected supply matches the current supply
        uint256 currentSupplyAfter = ITokenTemplate(paramsCached.tokenContractAddress).totalSupply();
        require(currentSupplyAfter == allowedMaxSupply, "total supply mismatch");
        emit TokenLPCreated(_tokenId, tokenAmount, avaxAmount, 0); // 0 means deployment is done via arenaPoolDeployer
    }

    /**
     * @notice Calculates the fees for a given amount and referrer.
     * @param _rawCosts The amount to calculate fees for.
     * @param _tokenId token id.
     * @param _user to determine the referral fee.
     *
     * @return feeData the complete feeData.
     */
    function getFeeData(uint256 _tokenId, uint256 _rawCosts, address _user)
        public
        view
        returns (FeeData memory feeData)
    {
        feeData.tokenCreator = tokenParams[_tokenId].creatorAddress;
        feeData.referrerAddress = referrerRegistry.getReferrer(_user);
        feeData.protocolFee = (_rawCosts * protocolFeeBasisPoint + 5000) / 10000;
        feeData.creatorFee = (_rawCosts * tokenParams[_tokenId].creatorFeeBasisPoints + 5000) / 10000;
        feeData.referralFee = (_rawCosts * referralFeeBasisPoint + 5000) / 10000;
        if (feeData.referrerAddress == address(0)) {
            // no referrer
            feeData.protocolFee += feeData.referralFee;
            feeData.referralFee = 0;
        }
        feeData.totalFeeAmount = feeData.protocolFee + feeData.creatorFee + feeData.referralFee;
        if(_tokenId == tokenIdentifier) {
            feeData.totalFeeAmount += tokenCreationBuyFeeAmount;
        }
    }

    /**
     * @notice Handles the transfer of fees.
     * @param feeData all the relevant fee information.
     * @param totalCost The total cost.
     */
    function _handleFeeTransfers(FeeData memory feeData, uint256 totalCost) internal {
        uint256 protocolFeeAmount = feeData.protocolFee;
        if (feeData.referrerAddress != address(0)) {
            (bool success, ) = payable(feeData.referrerAddress).call{value: feeData.referralFee, gas: 2300}("");
            if(!success) {
                protocolFeeAmount+=feeData.referralFee;
            }
        }
        if (msg.value > totalCost) {
            payable(msg.sender).transfer(msg.value - totalCost);
        }
        if (feeData.tokenCreator != address(0) && feeData.creatorFee > 0) {
            (bool success, ) = payable(feeData.tokenCreator).call{value: feeData.creatorFee, gas: 2300}("");
            if(!success) {
                protocolFeeAmount+=feeData.creatorFee;
            }
        }
        (bool sentSuccess,) = payable(protocolFeeDestination).call{value: protocolFeeAmount}("");
        require(sentSuccess, "Failed to send protocol fee");

    }


    /**
     * @notice Calculates the cost to buy a given amount of tokens for a token.
     * @param amountInToken amount in tokens (not in wei).
     * @param _tokenId The ID of the token.
     * @return The cost to buy the given amount of tokens.
     */
    function calculateCost(uint256 amountInToken, uint256 _tokenId) public view returns (uint256) {
        if (amountInToken == 0) return 0;
        uint256 totalSupply =
            ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).totalSupply() / GRANULARITY_SCALER;
        return _integralCeil(_tokenId, totalSupply + amountInToken, totalSupply); // rounds up
    }

    /**
     * @notice Calculates the total cost to buy a given amount of tokens for a token.
     * @param amountInToken amount in tokens (not in wei).
     * @param _tokenId The ID of the token.
     * @return The total cost to buy the given amount of tokens.
     */
    function calculateCostWithFees(uint256 amountInToken, uint256 _tokenId) public view returns (uint256) {
        if (amountInToken == 0) return 0;
        uint256 costs = calculateCost(amountInToken, _tokenId);
        FeeData memory feeData = getFeeData(_tokenId, costs, address(0));
        return costs + feeData.totalFeeAmount;
    }

    /**
     * @notice Calculates the cost to buy a given amount of tokens for a token.
     * @param amountInToken amount in tokens (not in wei).
     * @param _tokenId The ID of the token.
     * @param totalSupply current tokenSupply in ether
     * @return The cost to buy the given amount of tokens and the current supply.
     */
    function calculateCostWithSupply(uint256 amountInToken, uint256 _tokenId, uint256 totalSupply)
        public
        view
        returns (uint256)
    {
        if (amountInToken == 0) return 0;
        return _integralCeil(_tokenId, totalSupply + amountInToken, totalSupply); // rounds up
    }

    /**
     * @notice Calculates the scaled parametric cost to buy a given amount of tokens.
     * @param amountInWei The amount of tokens in wei to buy.
     * @param supplyInWei The current supply of tokens in wei.
     * @param a The quadratic multiplier.
     * @param b The linear multiplier.
     * @param curveScaler The curve scaler.
     * @return The scaled parametric cost to buy the given amount of tokens.
     */
    function calculateCostScaledParametric(
        uint256 amountInWei,
        uint256 supplyInWei,
        uint256 a,
        uint256 b,
        uint256 curveScaler
    ) public pure returns (uint256) {
        uint256 amountInTokens = amountInWei / GRANULARITY_SCALER;
        uint256 supplyInTokens = supplyInWei / GRANULARITY_SCALER;
        uint256 upperBound = supplyInTokens + amountInTokens;
        uint256 lowerBound = supplyInTokens;
        uint256 upperSum = (2 * (upperBound ** 3) * a) + (3 * (upperBound ** 2) * b);
        uint256 lowerSum = (2 * (lowerBound ** 3) * a) + (3 * (lowerBound ** 2) * b);
        return ((upperSum - lowerSum) + (curveScaler * 6 - 1)) / (curveScaler * 6);
    }

    function calculateCostScaledParametricWithFees(
        uint256 amountInWei,
        uint256 supplyInWei,
        uint256 a,
        uint256 b,
        uint256 curveScaler,
        uint256 creatorFeeBasisPoints
    ) external view returns (uint256) {
            uint256 rawCosts = calculateCostScaledParametric(amountInWei, supplyInWei, a, b, curveScaler);
            return rawCosts + ((rawCosts * protocolFeeBasisPoint + 5000) / 10000)
                + (rawCosts * creatorFeeBasisPoints + 5000) / 10000 + (rawCosts * referralFeeBasisPoint + 5000) / 10000;
    }

    /**
     * @notice Calculates the reward for selling a given amount of tokens for a token.
     * @param amount The amount of tokens to sell.
     * @param _tokenId The ID of the token.
     * @return The reward for selling the given amount of tokens.
     */
    function calculateReward(uint256 amount, uint256 _tokenId) public view returns (uint256) {
        if (amount == 0) return 0;
        uint256 totalSupply =
            ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).totalSupply() / GRANULARITY_SCALER;
        return _integralFloor(_tokenId, totalSupply, totalSupply - amount);
    }

    /**
     * @notice Calculates the net reward for selling a given amount of tokens for a token.
     * @param amount The amount of tokens to sell.
     * @param _tokenId The ID of the token.
     * @return The reward for selling the given amount of tokens.
     */
    function calculateRewardWithFees(uint256 amount, uint256 _tokenId) external view returns (uint256) {
        if (amount == 0) return 0;
        uint256 reward = calculateReward(amount, _tokenId);
        FeeData memory feeData = getFeeData(_tokenId, reward, address(0));
        return reward - feeData.totalFeeAmount;
    }

    /**
     * @notice Calculates the reward for selling a given amount of tokens for a token.
     * @param amount The amount of tokens to sell.
     * @param _tokenId The ID of the token.
     * @return The reward for selling the given amount of tokens.
     */
    function calculateRewardAndSupply(uint256 amount, uint256 _tokenId) public view returns (uint256, uint256) {
        uint256 totalSupply =
            ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).totalSupply() / GRANULARITY_SCALER;
        if (amount == 0) return (0, totalSupply);

        return (_integralFloor(_tokenId, totalSupply, totalSupply - amount), totalSupply);
    }


    /**
     * @notice Calculates the integral floor for the bonding curve.
     * @param _tokenId The ID of the token.
     * @param upperBound The upper bound of the integral.
     * @param lowerBound The lower bound of the integral.
     * @return The integral floor for the bonding curve.
     */
    function _integralFloor(uint256 _tokenId, uint256 upperBound, uint256 lowerBound) internal view returns (uint256) {
        TokenParameters memory params = tokenParams[_tokenId];
        uint256 upperSum = ((2 * (upperBound ** 3)) * params.a) + (3 * (upperBound ** 2) * params.b);
        uint256 lowerSum = ((2 * (lowerBound ** 3)) * params.a) + (3 * (lowerBound ** 2) * params.b);
        return ((upperSum - lowerSum)) / (params.curveScaler * 6);
    }

    /**
     * @notice Calculates the integral ceiling for the bonding curve.
     * @param _tokenId The ID of the token.
     * @param upperBound The upper bound of the integral.
     * @param lowerBound The lower bound of the integral.
     * @return The integral ceiling for the bonding curve.
     */
    function _integralCeil(uint256 _tokenId, uint256 upperBound, uint256 lowerBound) internal view returns (uint256) {
        TokenParameters memory params = tokenParams[_tokenId];
        uint256 upperSum = (2 * (upperBound ** 3) * params.a) + (3 * (upperBound ** 2) * params.b);
        uint256 lowerSum = (2 * (lowerBound ** 3) * params.a) + (3 * (lowerBound ** 2) * params.b);
        return ((upperSum - lowerSum) + (params.curveScaler * 6 - 1)) / (params.curveScaler * 6);
    }

    /**
     * @notice returns the allowed supply for given params.
     * @param a The quadratic multiplier.
     * @param b The linear multiplier.
     * @param c The curve scaler.
     * @param tokenSplit allowed token supply.
     *
     * @return allowedSupply The allowed supply with given parameters.
     */
    function allowedTotalSupplyWithParameters(uint16 a, uint8 b, uint128 c, uint256 tokenSplit)
        public
        view
        returns (uint256 allowedSupply)
    {
        bytes32 paramatersHash = keccak256(abi.encodePacked(a, b, c, tokenSplit));
        return allowedTokenSupplyWithParameters[paramatersHash];
    }

    /**
     * @notice returns the maximum amount of tokens for sale.
     * @param _tokenId the token id
     * @return buyLimit max amount of tokens that can be bought, denominated in wei
     */
    function getMaxTokensForSale(uint256 _tokenId) public view returns (uint256 buyLimit) {
        uint256 currentSupply = ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).totalSupply();
        (buyLimit,) = _getMaxTokensForSaleWithSupply(_tokenId, currentSupply);
        return buyLimit;
    }

    function getTokenParameters(uint256 _tokenId) external view returns (TokenParameters memory params) {
        return tokenParams[_tokenId];
    }

    function getV4PoolInitParams() external view returns (V4PoolInitParams memory) {
        return v4PoolInitParams;
    }
    /**
     * @notice returns the maximum amount of tokens for sale.
     * @param _tokenId the token id
     * @param _currentSupplyInWei current supply in wei
     *
     * @return buyLimit max amount of tokens that can be bought, denominated in wei
     */
    function _getMaxTokensForSaleWithSupply(uint256 _tokenId, uint256 _currentSupplyInWei)
        internal
        view
        returns (uint256 buyLimit, uint256 maxTokensForSale)
    {
        uint256 maxSupplyForSale = tokenSupply[_tokenId] * tokenParams[_tokenId].salePercentage / 100;
        if (maxSupplyForSale >= _currentSupplyInWei) {
            return ((maxSupplyForSale - _currentSupplyInWei), maxSupplyForSale);
        } else {
            return (0, maxSupplyForSale);
        }
    }

    function _isLpTokenThresholdReached(uint256 _tokenId) internal view returns (bool) {
        return tokenSupply[_tokenId] * tokenParams[_tokenId].salePercentage
            == ITokenTemplate(tokenParams[_tokenId].tokenContractAddress).totalSupply() * 100;
    }

    /**
     * @notice Receives Ether transfers. Reverts if the sender is not the Uniswap V2 Router.
     */
    receive() external payable {
        if (msg.sender != address(uniswapV2Router02)) {
            revert("Only Uniswap V2 Router can send Ether to this contract");
        }
        payable(owner()).transfer(msg.value);
    }

    function _handleInitialBuyFee() internal {
        if(tokenCreationBuyFeeAmount > 0) {
            if(transferTokenCreationBuyFeeToVault) {
                payable(tokenCreationBuyFeeVault).transfer(tokenCreationBuyFeeAmount);
            }
            else {
                address[] memory path = new address[](2);
                path[0] = WAVAX_ADDRESS;
                path[1] = ARENA_TOKEN_ADDRESS;
                uniswapV2Router02.swapExactAVAXForTokens{value: tokenCreationBuyFeeAmount}(0, path, tokenCreationBuyFeeVault, block.timestamp);
            }
        }
    }
}
