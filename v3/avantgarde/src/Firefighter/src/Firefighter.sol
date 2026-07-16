// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// Morpho Blue interfaces
import {Id, IMorpho, MarketParams, Market, Position} from "../lib/morpho-blue/src/interfaces/IMorpho.sol";
import {IMetaMorpho, MarketAllocation} from "./interfaces/IMetaMorpho.sol";

// Morpho Blue libraries
import {MathLib} from "../lib/morpho-blue/src/libraries/MathLib.sol";
import {MarketParamsLib} from "../lib/morpho-blue/src/libraries/MarketParamsLib.sol";
import {MorphoBalancesLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";
import {MorphoStorageLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoStorageLib.sol";
import {MorphoLib} from "../lib/morpho-blue/src/libraries/periphery/MorphoLib.sol";
import "../lib/morpho-blue/src/libraries/ConstantsLib.sol";

// OpenZeppelin upgradeability
import {Initializable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "../lib/openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import {ERC1967Proxy} from "../lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {IERC20Metadata} from "../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
// Project dependencies
import {MorphoHelper} from "./MorphoHelper.sol";

/**
 * @title FirefighterProxy
 * @notice A proxy contract for the Firefighter implementation
 * @dev Uses OpenZeppelin's ERC1967Proxy for better security and upgradeability
 */
contract FirefighterProxy is ERC1967Proxy {
    /**
     * @notice Constructor for deploying a proxy that delegates to the Firefighter implementation
     * @param _implementation The address of the implementation contract
     * @param _initialOwner The address that will own this proxy and can upgrade it
     * @param _morphoHelper The address of the MorphoHelper contract
     */
    constructor(
        address _implementation,
        address _initialOwner,
        address _morphoHelper
    ) ERC1967Proxy(_implementation, abi.encodeWithSignature("initialize(address,address)", _initialOwner, _morphoHelper)) {}
}

/**
 * @title Firefighter
 * @notice Implementation contract for rescuing liquidity from highly utilized markets
 */
contract Firefighter is Initializable, UUPSUpgradeable, AccessControlUpgradeable {
    using MathLib for uint256;
    using MorphoBalancesLib for IMorpho;
    using MorphoStorageLib for IMorpho;
    using MorphoLib for IMorpho;
    using MarketParamsLib for MarketParams;

    // Define role constants
    bytes32 public constant ADMIN_ROLE = DEFAULT_ADMIN_ROLE;
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

    error UnsupportedChain();
    error InsufficientLiquidity();
    error Unauthorized();

    // Event emitted when liquidity is rescued from a market
    event MarketRescued(address indexed vault, Id indexed marketId, Id indexed idleMarketId, uint256 liquidityMoved);

    // Event emitted when an operator is set
    event OperatorSet(address indexed operator, bool enabled);

    // Event emitted when MorphoHelper is set
    event MorphoHelperSet(address indexed morphoHelper);

    // Struct for market data to be used in multi-market operations
    struct VaultMarketIdle {
        IMetaMorpho vault;
        Id marketId;
        Id idleMarketId;
    }

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IMorpho public immutable morpho;

    // MorphoHelper instance
    MorphoHelper public morphoHelper;

    // Constructor should only set immutable variables
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        if (block.chainid == 1) {
            morpho = IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb); // Mainnet
        } else if (block.chainid == 8453) {
            morpho = IMorpho(0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb); // Base
        } else {
            revert UnsupportedChain();
        }

        // Disable initializers in the implementation contract
        _disableInitializers();
    }

    /**
     * @dev Initialize function to replace the constructor for upgradeable contracts
     * @param initialAdmin The address that will be the admin of this contract
     * @param _morphoHelper The address of the MorphoHelper contract
     */
    function initialize(address initialAdmin, address _morphoHelper) public initializer {
        __UUPSUpgradeable_init();
        __AccessControl_init();

        // Grant initial admin the ADMIN_ROLE and OPERATOR_ROLE
        _grantRole(ADMIN_ROLE, initialAdmin);
        _grantRole(OPERATOR_ROLE, initialAdmin);

        // Set the MorphoHelper instance
        morphoHelper = MorphoHelper(_morphoHelper);
        emit MorphoHelperSet(_morphoHelper);
    }

    /**
     * @notice Sets the MorphoHelper instance
     * @param _morphoHelper The address of the MorphoHelper contract
     */
    function setMorphoHelper(address _morphoHelper) external onlyRole(ADMIN_ROLE) {
        morphoHelper = MorphoHelper(_morphoHelper);
        emit MorphoHelperSet(_morphoHelper);
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract.
     * Called by {upgradeTo} and {upgradeToAndCall}.
     */
    function _authorizeUpgrade(address) internal override onlyRole(ADMIN_ROLE) {}

    /**
     * @notice Sets an address as an operator
     * @param operator The address to set as operator
     * @param enabled Whether to enable or disable the operator
     */
    function setOperator(address operator, bool enabled) external onlyRole(ADMIN_ROLE) {
        if (enabled) {
            _grantRole(OPERATOR_ROLE, operator);
        } else {
            _revokeRole(OPERATOR_ROLE, operator);
        }
        emit OperatorSet(operator, enabled);
    }

    /**
     * @notice Checks if an address has the OPERATOR_ROLE
     * @param operator The address to check
     * @return True if the address has the OPERATOR_ROLE, false otherwise
     */
    function isOperator(address operator) external view returns (bool) {
        return hasRole(OPERATOR_ROLE, operator);
    }

    /**
     * @dev Modifier to restrict access to operators only
     */
    modifier onlyOperator() {
        require(hasRole(OPERATOR_ROLE, msg.sender), "Not an operator");
        _;
    }

    function getPosition(address user, Id id) public view returns (uint256 suppliedAssets, uint256 borrowedAssets) {
        MarketParams memory marketParams = morpho.idToMarketParams(id);

        borrowedAssets = morpho.expectedBorrowAssets(marketParams, user);
        suppliedAssets = morpho.expectedSupplyAssets(marketParams, user);
    }

    function marketLiquidity(Id marketId) public view returns (uint256) {
        Market memory market = morpho.market(marketId);
        return market.totalSupplyAssets - market.totalBorrowAssets;
    }

    function vaultPosition(IMetaMorpho vault, Id marketId) public view returns (uint256) {
        MarketParams memory marketParams = morpho.idToMarketParams(marketId);
        return morpho.expectedSupplyAssets(marketParams, address(vault));
    }

    function maxWithdraw(IMetaMorpho vault, Id marketId) public view returns (uint256) {
        uint256 liquidity = marketLiquidity(marketId);
        uint256 position = vaultPosition(vault, marketId);

        // Return the smaller of the two values (can't withdraw more than position)
        return liquidity <= position ? liquidity : position;
    }

    struct VaultMarket {
        IMetaMorpho vault;
        Id marketId;
    }

    function vaultPositionMulti(VaultMarket[] calldata vaultMarkets) public view returns (uint256[] memory) {
        uint256[] memory result = new uint256[](vaultMarkets.length);
        for (uint256 i = 0; i < vaultMarkets.length; i++) {
            result[i] = vaultPosition(vaultMarkets[i].vault, vaultMarkets[i].marketId);
        }
        return result;
    }

    function maxWithdrawMulti(VaultMarket[] calldata vaultMarkets) public view returns (uint256[] memory) {
        uint256[] memory result = new uint256[](vaultMarkets.length);
        for (uint256 i = 0; i < vaultMarkets.length; i++) {
            result[i] = maxWithdraw(vaultMarkets[i].vault, vaultMarkets[i].marketId);
        }
        return result;
    }

    function canSave(IMetaMorpho vault, Id marketId, uint256 min_amount) public view returns (bool) {
        uint256 position = vaultPosition(vault, marketId);
        if (position == 0) {
            return false;
        }
        if (position < min_amount) {
            min_amount = position;
        }

        uint256 liquidity = marketLiquidity(marketId);

        return liquidity > min_amount;
    }


    struct VaultMarketAmount {
        IMetaMorpho vault;
        Id marketId;
        uint256 amount;
    }
    function canSaveMulti(VaultMarketAmount[] calldata vaultMarketAmounts) public view returns (bool) {
        for (uint256 i = 0; i < vaultMarketAmounts.length; i++) {
            if (canSave(vaultMarketAmounts[i].vault, vaultMarketAmounts[i].marketId, vaultMarketAmounts[i].amount)) {
                return true;
            }
        }
        return false;
    }

    function savable(VaultMarketAmount[] calldata vaultMarketAmounts) public view returns (VaultMarket[] memory) {
        VaultMarket[] memory savableData = new VaultMarket[](vaultMarketAmounts.length);
        uint256 savableCount = 0;
        for (uint256 i = 0; i < vaultMarketAmounts.length; i++) {
            if (canSave(vaultMarketAmounts[i].vault, vaultMarketAmounts[i].marketId, vaultMarketAmounts[i].amount)) {
                savableData[savableCount++] = VaultMarket({vault: vaultMarketAmounts[i].vault, marketId: vaultMarketAmounts[i].marketId});
            }
        }

        VaultMarket[] memory result = new VaultMarket[](savableCount);
        for (uint256 i = 0; i < savableCount; i++) {
            result[i] = savableData[i];
        }

        return result;
    }

    function _performSave(IMetaMorpho vault, Id marketId, Id idleMarketId) internal onlyOperator returns (uint256) {
        MarketParams memory sourceMarket = morpho.idToMarketParams(marketId);
        uint256 sourceMarketLiquidity = marketLiquidity(marketId);
        if (sourceMarketLiquidity == 0) {
            return 0;
        }

        uint256 initialPosition = morpho.expectedSupplyAssets(sourceMarket, address(vault));

        if (initialPosition == 0) {
            return 0;
        }

        uint256 withdrawAmount = sourceMarketLiquidity <= initialPosition ? sourceMarketLiquidity : initialPosition;

        MarketParams memory idleMarket = morpho.idToMarketParams(idleMarketId);

        MarketAllocation[] memory allocations = new MarketAllocation[](2);

        allocations[0] = MarketAllocation({marketParams: sourceMarket, assets: initialPosition - withdrawAmount});

        allocations[1] = MarketAllocation({marketParams: idleMarket, assets: type(uint256).max});

        morphoHelper.reallocate(vault, allocations);
        emit MarketRescued(address(vault), marketId, idleMarketId, withdrawAmount);

        return withdrawAmount;
    }

    function save(IMetaMorpho vault, Id marketId, Id idleMarketId) external onlyOperator returns (uint256) {
        return _performSave(vault, marketId, idleMarketId);
    }

    function saveMulti(VaultMarketIdle[] calldata vaultMarketIdles) external onlyOperator returns (uint256[] memory) {
        uint256[] memory amountsSaved = new uint256[](vaultMarketIdles.length);

        for (uint256 i = 0; i < vaultMarketIdles.length; i++) {
            amountsSaved[i] = _performSave(vaultMarketIdles[i].vault, vaultMarketIdles[i].marketId, vaultMarketIdles[i].idleMarketId);
        }

        return amountsSaved;
    }
}
