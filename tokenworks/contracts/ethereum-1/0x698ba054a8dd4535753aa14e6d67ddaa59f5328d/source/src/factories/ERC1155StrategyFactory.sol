// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {ERC1155Strategy} from "../strategies/ERC1155Strategy.sol";
import {INFTStrategyHook, INFTStrategyFactory} from "../Interfaces.sol";
import {LibClone} from "solady/utils/LibClone.sol";
import {StrategyFactory} from "./StrategyFactory.sol";
import {IERC165} from "@openzeppelin/contracts/interfaces/IERC165.sol";

/// @title ERC1155StrategyFactory - Factory for deploying ERC1155Strategy contracts
/// @author TokenWorks (https://token.works/)
/// @notice This factory deploys and manages ERC1155Strategy contracts with Uniswap V4 integration
/// @dev Uses ERC1967 proxy pattern for upgradeable ERC1155Strategy deployments
contract ERC1155StrategyFactory is StrategyFactory {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™               ™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™              ™™™™™™™™™™™™™              ™™™™™™™™™™™  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™            ™™™™™™™™™™™™™™™            ™™™™™™™™™™™   */
    /*                ™™™™™™™™™™™            ™™™™™™™™™™™           ™™™™™™™™™™™™™™™           ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™™    */
    /*                ™™™™™™™™™™™             ™™™™™™™™™™          ™™™™™™™™™™™™™™™™™          ™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™        ™™™™™™™™™™™™™™™™™™™        ™™™™™™™™™™™     */
    /*                ™™™™™™™™™™™              ™™™™™™™™™™™       ™™™™™™™™™ ™™™™™™™™™       ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™™ ™™™™™™™™™™      ™™™™™™™™™™™      */
    /*                ™™™™™™™™™™™               ™™™™™™™™™™      ™™™™™™™™™   ™™™™™™™™™      ™™™™™™™™™™       */
    /*                ™™™™™™™™™™™                ™™™™™™™™™™    ™™™™™™™™™™    ™™™™™™™™™    ™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™   ™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™™        */
    /*                ™™™™™™™™™™™                 ™™™™™™™™™™  ™™™™™™™™™™     ™™™™™™™™™™  ™™™™™™™™™™         */
    /*                ™™™™™™™™™™™                  ™™™™™™™™™™™™™™™™™™™™       ™™™™™™™™™™™™™™™™™™™™          */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                   ™™™™™™™™™™™™™™™™™™         ™™™™™™™™™™™™™™™™™™           */
    /*                ™™™™™™™™™™™                    ™™™™™™™™™™™™™™™™           ™™™™™™™™™™™™™™™™            */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                     ™™™™™™™™™™™™™™             ™™™™™™™™™™™™™™             */
    /*                ™™™™™™™™™™™                      ™™™™™™™™™™™™               ™™™™™™™™™™™™              */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                      CONSTANTS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Mapping of NFT collection addresses to their ERC1155Strategy contracts
    mapping(bytes32 => address) private _keyToStrategy;
    /// @notice Mapping of ERC1155Strategy addresses to their collection contracts
    mapping(address => bytes32) private _strategyToKey;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Collection already has an ERC1155Strategy deployed
    error CollectionAlreadyLaunched();
    /// @notice Incorrect ETH amount sent with launch transaction
    error WrongEthAmount();
    /// @notice Contract does not implement ERC721 interface
    error NotERC1155();
    /// @notice Buy increment is outside valid range
    error InvalidIncrement();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Event emitted when a new ERC1155Strategy instance is launched
    /// @param collection The NFT collection address
    /// @param strategy The deployed ERC1155Strategy contract address
    /// @param key The strategy uniq "key"
    /// @param ids The strategy ids
    /// @param tokenName The name of the strategy token
    /// @param tokenSymbol The symbol of the strategy token
    event ERC1155StrategyLaunched(
        address indexed collection,
        address indexed strategy,
        bytes32 key,
        uint256[] ids,
        string tokenName,
        string tokenSymbol
    );

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Constructor initializes the factory with required dependencies
    /// @param implementation the ERC1155Strategy implementation
    /// @param _posm Uniswap V4 Position Manager address
    /// @param _permit2 Permit2 contract address
    /// @param _router Uniswap V4 Router address
    /// @param _poolManager Uniswap V4 Pool Manager address
    /// @param _feeAddress Address to receive deployment fees
    /// @dev Sets up immutable references and creates ERC1155Strategy implementation
    constructor(
        address implementation,
        address _posm,
        address _permit2,
        address payable _router,
        address _poolManager,
        address _feeAddress
    ) StrategyFactory(_posm, _permit2, _router, _poolManager, _feeAddress) {
        strategyImplementation = implementation;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Launches a new ERC1155Strategy contract with owner permissions
    /// @param collection Address of the NFT collection contract
    /// @param ids ids for the ERC1155Strategy
    /// @param tokenName Name of the strategy token
    /// @param tokenSymbol Symbol of the strategy token
    /// @param collectionOwner Address that will receive fees from the strategy
    /// @param buyIncrement The buy increment for price calculations
    /// @return The deployed ERC1155Strategy contract
    /// @dev Only callable by contract owner, deploys ERC1155Strategy and initializes liquidity
    function ownerLaunchStrategy(
        address collection,
        ERC1155Strategy.StrategyType strategyType,
        uint256[] memory ids,
        string memory tokenName,
        string memory tokenSymbol,
        address collectionOwner,
        uint256 buyIncrement
    ) external payable onlyLauncher returns (ERC1155Strategy) {
        // Validate the parameters passed
        if (hookAddress == address(0)) {
            revert HookNotSet();
        }

        if (checkIfAlreadyLaunched(collection, strategyType, ids)) {
            revert CollectionAlreadyLaunched();
        }

        if (buyIncrement < 0.01 ether || buyIncrement > 0.1 ether) {
            revert InvalidIncrement();
        }

        if (!IERC165(collection).supportsInterface(0xd9b67a26)) {
            revert NotERC1155();
        }

        ERC1155Strategy strategy = _deployUpgradeableNFTStrategy(
            collection,
            strategyType,
            ids,
            hookAddress,
            tokenName,
            tokenSymbol,
            buyIncrement,
            owner()
        );

        bytes32 key = getKey(collection, strategyType, ids);

        _keyToStrategy[key] = address(strategy);
        _strategyToKey[address(strategy)] = key;

        // Costs 2 wei
        _loadLiquidity(address(strategy));

        // Set fees to collectionOwner
        INFTStrategyHook(hookAddress).adminUpdateFeeAddress(
            address(strategy),
            collectionOwner
        );

        emit ERC1155StrategyLaunched(
            collection,
            address(strategy),
            key,
            ids,
            tokenName,
            tokenSymbol
        );

        return strategy;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Deploys a new upgradeable ERC1155Strategy contract
    /// @param _collection The NFT collection address
    /// @param strategyType The strategy type for ERC1155Strategy
    /// @param _ids The ids for ethe ERC1155Strategy
    /// @param _hook The hook contract address
    /// @param _tokenName The name of the strategy token
    /// @param _tokenSymbol The symbol of the strategy token
    /// @param _buyIncrement The buy increment for price calculations
    /// @param _owner The owner of the ERC1155Strategy contract
    /// @return proxy The deployed ERC1155Strategy proxy contract
    /// @dev Uses ERC1967 proxy pattern with packed immutable args
    function _deployUpgradeableNFTStrategy(
        address _collection,
        ERC1155Strategy.StrategyType strategyType,
        uint256[] memory _ids,
        address _hook,
        string memory _tokenName,
        string memory _tokenSymbol,
        uint256 _buyIncrement,
        address _owner
    ) internal returns (ERC1155Strategy proxy) {
        bytes memory args = abi.encodePacked(
            address(this),
            router,
            poolManager
        );

        proxy = ERC1155Strategy(
            payable(
                LibClone.deployERC1967(address(strategyImplementation), args)
            )
        );

        proxy.initialize(
            _collection,
            strategyType,
            _ids,
            _hook,
            _tokenName,
            _tokenSymbol,
            _buyIncrement,
            launchUpgradeable ? _owner : address(0)
        );
    }

    /// @param collection The address of the NFT collection to check
    /// @return True if collection already has a strategy, false otherwise
    /// @dev Checks both current factory and old factory for existing strategies
    function checkIfAlreadyLaunched(
        address collection,
        ERC1155Strategy.StrategyType strategyType,
        uint256[] memory ids
    ) public view returns (bool) {
        bytes32 key = getKey(collection, strategyType, ids);

        if (_keyToStrategy[key] != address(0)) {
            return true;
        }

        return false;
    }

    function getKey(
        address collection,
        ERC1155Strategy.StrategyType strategyType,
        uint256[] memory ids
    ) public pure returns (bytes32) {
        return keccak256(abi.encode(collection, strategyType, ids));
    }
}
