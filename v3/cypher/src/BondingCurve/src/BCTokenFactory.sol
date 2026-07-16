// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IBondingCurve} from "src/interfaces/IBondingCurve.sol";
import {IBCToken} from "src/interfaces/IBCToken.sol";
import {IBCTokenFactory} from "src/interfaces/IBCTokenFactory.sol";
import {IBCTokenDeployer} from "src/interfaces/IBCTokenDeployer.sol";

/**
 * @title BCTokenFactory
 * @author Camelot
 * @notice Factory contract for deploying bonding-curve-backed BCTokens with optional
 * creator buy, configurable fees, and protocol-level pause functionality.
 */
contract BCTokenFactory is Ownable, IBCTokenFactory {
    using SafeERC20 for IERC20;
    
    /// @notice Maximum fee that can be charged by protocol, creator, or refund (bps).
    uint256 public constant MAX_FEE = 500;

    /// @notice Hard cap for max creator buy percentage — 25% (2500 bps).
    uint256 public constant MAX_CREATOR_BUY_BPS_HARD_CAP = 2500;

    /// @notice The address of the NFT Position Manager.
    address public immutable POSITION_MANAGER;

    /// @notice The address of the WETH token.
    address public immutable WETH;

    /// @dev The token deployer contract that handles BCToken deployment via CREATE3.
    IBCTokenDeployer public immutable TOKEN_DEPLOYER;

    /// @notice Whether an address is a BCToken deployed by this factory.
    mapping(address => bool) public bcTokens;

    /// @notice Maps a parameter hash to the deployed coin address.
    mapping(bytes32 => address) public bcTokensParams;

    /// @notice The address of the LP positions harvester.
    address public harvester;

    /// @notice The bonding curve contract.
    IBondingCurve public bondingCurve;

    /// @notice The address of the liquidity manager.
    address public liquidityManager;

    /// @notice The address of the token vesting contract.
    address public tokenVesting;

    /// @dev Virtual reserves to initialise the bonding curve.
    uint256 internal _virtualReserves;

    /// @dev Maximum coin supply.
    uint256 internal _maxSupply;

    /// @dev Initial supply used to seed LP.
    uint256 internal _initialSupply;

    /// @dev Fee charged by the protocol when bonding curve LPs (bps).
    uint80 internal _protocolFee;

    /// @dev Fee earned by the creator when bonding curve LPs (bps).
    uint80 internal _creatorFee;

    /// @dev Fee paid to the caller who triggers LP seeding (bps).
    uint80 internal _refundFee;

    /// @dev Flat ETH fee charged to create a new coin.
    uint80 internal _creationFee;

    /// @notice Whether the protocol is paused.
    bool public PROTOCOL_PAUSED;

    /// @notice Whether default pool (POL) seeding is enabled.
    bool public defaultPoolEnabled = true;

    /// @notice The maximum creator buy percentage in basis points.
    uint256 public maxCreatorBuyBps = 1500;

    /**
     * @notice Initialises the factory with addresses and curve parameters.
     * @param addresses Struct containing address configurations.
     * @param params Struct containing curve and fee parameters.
     */
    constructor(
        FactoryAddresses memory addresses,
        FactoryParams memory params
    ) Ownable(addresses.owner) {
        POSITION_MANAGER = addresses.positionManager;
        WETH = addresses.weth;
        TOKEN_DEPLOYER = IBCTokenDeployer(addresses.tokenDeployer);

        _updateInitialParams(params.virtualReserves, params.initialSupply, params.maxSupply);
        _updateFees(params.protocolFee, params.creatorFee, params.refundFee, params.creationFee);
        _setHarvester(addresses.harvester);

        if (addresses.tokenVesting != address(0)) {
            tokenVesting = addresses.tokenVesting;
        }
    }

    /**
     * @notice Accepts ETH refunds from the bonding curve during creator buy operations.
     */
    receive() external payable {}

    /**
     * @inheritdoc IBCTokenFactory
     */
    function deploy(
        string memory name,
        string memory symbol,
        string memory description,
        string memory image,
        uint8 communityFeeRatio,
        bytes32 salt,
        IBCTokenFactory.StakingConfig calldata stakingConfig
    ) external payable returns (address) {
        if (PROTOCOL_PAUSED) revert ProtocolPaused();
        if (address(bondingCurve) == address(0) || address(liquidityManager) == address(0)) {
            revert InvalidZeroAddress();
        }
        if (msg.value < _creationFee) revert InsufficientCreationFee();
        if (communityFeeRatio > 100) revert InvalidCommunityFeeRatio();
        if (stakingConfig.deployStaking && communityFeeRatio == 0) revert StakingRequiresCommunityFee();

        bytes32 params = keccak256(abi.encode(name, symbol, description, image));
        if (bcTokensParams[params] != address(0)) revert InvalidParams();

        address token = _deployToken(name, symbol, description, image, communityFeeRatio, salt, stakingConfig);

        bcTokensParams[params] = token;

        uint256 price = bondingCurve.getAmountOutSell(token, 1 ether);

        emit CoinDeployed(
            msg.sender,
            token,
            address(this),
            IBCToken(token).lp(),
            name,
            symbol,
            description,
            image,
            _initialSupply,
            _maxSupply,
            _virtualReserves,
            price,
            price * _initialSupply,
            IBCToken(token).TARGET_ETH()
        );

        uint256 buyAmount = msg.value - _creationFee;
        if (buyAmount > 0) {
            _creatorBuy(token, msg.sender, buyAmount);
        }

        return token;
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function withdraw(uint256 amount) external onlyOwner {
        (bool ok,) = owner().call{value: amount}("");
        if (!ok) revert FailedToSendETH();
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function setBondingCurve(address _bondingCurve) external onlyOwner {
        if (_bondingCurve == address(0)) revert InvalidZeroAddress();
        bondingCurve = IBondingCurve(_bondingCurve);
        emit BondingCurveUpdated(_bondingCurve);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function setLiquidityManager(address _liquidityManager) external onlyOwner {
        if (_liquidityManager == address(0)) revert InvalidZeroAddress();
        liquidityManager = _liquidityManager;
        emit LiquidityManagerUpdated(_liquidityManager);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function updateInitialParams(
        uint256 virtualReserves,
        uint256 initialSupply,
        uint256 maxSupply
    ) external onlyOwner {
        _updateInitialParams(virtualReserves, initialSupply, maxSupply);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function updateFees(uint80 protocolFee, uint80 creatorFee, uint80 refundFee, uint80 creationFee) external onlyOwner {
        _updateFees(protocolFee, creatorFee, refundFee, creationFee);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function setMaxCreatorBuyBps(uint256 _newMaxBps) external onlyOwner {
        if (_newMaxBps > MAX_CREATOR_BUY_BPS_HARD_CAP) revert ExceedsHardCap();
        maxCreatorBuyBps = _newMaxBps;
        emit MaxCreatorBuyBpsUpdated(_newMaxBps);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function setHarvester(address _harvester) external onlyOwner {
        _setHarvester(_harvester);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function setProtocolPaused(bool _state) external onlyOwner {
        PROTOCOL_PAUSED = _state;
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function setTokenVesting(address _tokenVesting) external onlyOwner {
        if (_tokenVesting == address(0)) revert InvalidZeroAddress();
        tokenVesting = _tokenVesting;
        emit TokenVestingUpdated(_tokenVesting);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function setDefaultPoolEnabled(bool _enabled) external onlyOwner {
        defaultPoolEnabled = _enabled;
        emit DefaultPoolEnabledUpdated(_enabled);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function initialParams()
        external
        view
        returns (uint256 virtualReserves, uint256 initialSupply, uint256 maxSupply)
    {
        return (_virtualReserves, _initialSupply, _maxSupply);
    }

    /**
     * @inheritdoc IBCTokenFactory
     */
    function feeConfig()
        external
        view
        returns (uint80 protocolFee, uint80 creatorFee, uint80 refundFee, uint80 creationFee)
    {
        return (_protocolFee, _creatorFee, _refundFee, _creationFee);
    }

    /**
     * @notice Deploys a new BCToken via the TOKEN_DEPLOYER using CREATE3.
     * @param name The name of the token.
     * @param symbol The symbol of the token.
     * @param description The description of the token.
     * @param image The image URI of the token.
     * @param communityFeeRatio The community fee ratio for the token.
     * @param salt The salt used for deterministic deployment.
     * @param stakingConfig The staking configuration for the token.
     * @return token The address of the deployed token.
     */
    function _deployToken(
        string memory name,
        string memory symbol,
        string memory description,
        string memory image,
        uint8 communityFeeRatio,
        bytes32 salt,
        IBCTokenFactory.StakingConfig calldata stakingConfig
    ) internal returns (address token) {
        bytes32 deploymentSalt = keccak256(abi.encodePacked(msg.sender, salt));

        token = TOKEN_DEPLOYER.getDeployed(deploymentSalt);
        if (token.code.length > 0) revert SaltAlreadyUsed();
        bcTokens[token] = true;

        TOKEN_DEPLOYER.deploy(
            deploymentSalt,
            IBCToken.InitParams({
                _name: name,
                _symbol: symbol,
                _img: image,
                _description: description,
                _creator: msg.sender,
                _initialOwner: owner(),
                _factory: address(this),
                _bondingCurve: address(bondingCurve),
                _positionManager: POSITION_MANAGER,
                _weth: WETH,
                _virtualReserves: _virtualReserves,
                _initialSupply: _initialSupply,
                _maxSupply: _maxSupply,
                _protocolFee: _protocolFee,
                _creatorFee: _creatorFee,
                _refundFee: _refundFee,
                _communityFeeRatio: communityFeeRatio,
                _stakingConfig: stakingConfig
            })
        );

        address _tokenVesting = tokenVesting;
        if (_tokenVesting != address(0)) {
            IBCToken(token).setTransferWhitelist(_tokenVesting, true);
        }
    }

    /**
     * @notice Buys tokens on behalf of the creator, subject to the maxCreatorBuyBps cap.
     * @param token The address of the token to buy.
     * @param tokenCreator The address of the creator receiving the tokens.
     * @param ethAmount The amount of ETH to spend on the buy.
     */
    function _creatorBuy(address token, address tokenCreator, uint256 ethAmount) internal {
        uint256 maxTokens = _maxSupply * maxCreatorBuyBps / 10_000;

        IBCToken(token).setTransferWhitelist(address(this), true);

        uint256 tokensBought = bondingCurve.buy{value: ethAmount}(token, address(0), 0);
        if (tokensBought > maxTokens) revert CreatorBuyExceedsCap();

        IERC20(token).safeTransfer(tokenCreator, tokensBought);
        IBCToken(token).setTransferWhitelist(address(this), false);

        emit CreatorBuy(tokenCreator, token, ethAmount, tokensBought);
    }

    /**
     * @notice Updates the bonding curve initialisation parameters for future deployments.
     * @param virtualReserves The virtual reserves for the bonding curve.
     * @param initialSupply The initial supply used to seed LP.
     * @param maxSupply The maximum coin supply.
     */
    function _updateInitialParams(uint256 virtualReserves, uint256 initialSupply, uint256 maxSupply) internal {
        if (virtualReserves == 0 || initialSupply == 0 || initialSupply >= maxSupply) {
            revert InvalidInitialParams();
        }

        _virtualReserves = virtualReserves;
        _initialSupply = initialSupply;
        _maxSupply = maxSupply;

        emit UpdatedInitialParams(virtualReserves, initialSupply, maxSupply);
    }

    /**
     * @notice Updates the fee configuration for future deployments.
     * @param protocolFee The protocol fee in basis points.
     * @param creatorFee The creator fee in basis points.
     * @param creationFee The flat ETH fee for creating a new coin.
     */
    function _updateFees(uint80 protocolFee, uint80 creatorFee, uint80 refundFee, uint80 creationFee) internal {
        if (protocolFee > MAX_FEE || creatorFee > MAX_FEE || refundFee > MAX_FEE) revert InvalidFees();

        _protocolFee = protocolFee;
        _creatorFee = creatorFee;
        _refundFee = refundFee;
        _creationFee = creationFee;

        emit FeesUpdated(protocolFee, creatorFee, refundFee, creationFee);
    }

    /**
     * @notice Sets the harvester address (must be non-zero).
     * @param _harvester The address of the new harvester.
     */
    function _setHarvester(address _harvester) internal {
        if (_harvester == address(0)) revert InvalidZeroAddress();
        harvester = _harvester;
        emit UpdatedHarvester(_harvester);
    }
}
