// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {LibClone} from "solady/utils/LibClone.sol";

import {ERC20Strategy} from "../strategies/ERC20Strategy.sol";
import {StrategyFactory} from "./StrategyFactory.sol";
import "../Interfaces.sol";

/// @title ERC20StrategyFactory - Factory for deploying ERC20Strategy contracts
/// @author TokenWorks (https://token.works/)
/// @notice This factory deploys and manages ERC20Strategy contracts with Uniswap V4 integration
/// @dev Uses ERC1967 proxy pattern for upgradeable ERC20Strategy deployments
contract ERC20StrategyFactory is StrategyFactory {
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

    /// @notice Mapping of ERC20 token addresses to their ERC20Strategy contracts
    mapping(address => address) public tokenToStrategy;
    /// @notice Mapping of ERC20Strategy addresses to their collection contracts
    mapping(address => address) public startegyToToken;

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Token already has an ERC20Strategy deployed
    error TokenAlreadyLaunched();
    /// @notice Incorrect ETH amount sent with launch transaction
    error WrongEthAmount();
    /// @notice Buy increment is outside valid range
    error InvalidIncrement();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM EVENTS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Event emitted when a new ERC20Strategy instance is launched
    /// @param token The token address
    /// @param strategy The deployed ERC20Strategy contract address
    /// @param tokenName The name of the strategy token
    /// @param tokenSymbol The symbol of the strategy token
    event ERC20StrategyLaunched(
        address indexed token,
        address indexed strategy,
        string tokenName,
        string tokenSymbol
    );

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     CONSTRUCTOR                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Constructor initializes the factory with required dependencies
    /// @param _posm Uniswap V4 Position Manager address
    /// @param _permit2 Permit2 contract address
    /// @param _router Uniswap V4 Router address
    /// @param _poolManager Uniswap V4 Pool Manager address
    /// @param _feeAddress Address to receive deployment fees
    /// @dev Sets up immutable references and creates ERC20Strategy implementation
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
    /*                    ADMIN FUNCTIONS                  */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    USER FUNCTIONS                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Launches a new ERC20Strategy contract with launcher permissions
    /// @param token Address of the NFT collection contract
    /// @param bagSize amount of tokens to buy in chunks
    /// @param tokenName Name of the strategy token
    /// @param tokenSymbol Symbol of the strategy token
    /// @param strategyFeeAddress Address that will receive fees from the strategy
    /// @param buyIncrement The buy increment for price calculations
    /// @return The deployed NFTStrategy contract
    /// @dev Only callable by contract owner, deploys NFTStrategy and initializes liquidity
    function ownerLaunchStrategy(
        address token,
        uint256 bagSize,
        string memory tokenName,
        string memory tokenSymbol,
        address strategyFeeAddress,
        uint256 buyIncrement
    ) external payable onlyLauncher returns (ERC20Strategy) {
        // Validate the parameters passed
        if (hookAddress == address(0)) {
            revert HookNotSet();
        }

        if (checkIfAlreadyLaunched(token)) {
            revert TokenAlreadyLaunched();
        }

        if (buyIncrement < 0.01 ether || buyIncrement > 1 ether) {
            revert InvalidIncrement();
        }

        ERC20Strategy strategy = _deployUpgradeableERC20Strategy(
            token,
            bagSize,
            hookAddress,
            tokenName,
            tokenSymbol,
            buyIncrement,
            owner()
        );

        tokenToStrategy[token] = address(strategy);
        startegyToToken[address(strategy)] = token;

        // Costs 2 wei
        _loadLiquidity(address(strategy));

        // Set fees to strategyFeeAddress
        INFTStrategyHook(hookAddress).adminUpdateFeeAddress(
            address(strategy),
            strategyFeeAddress
        );

        emit ERC20StrategyLaunched(
            token,
            address(strategy),
            tokenName,
            tokenSymbol
        );

        return strategy;
    }

    /// @notice Checks if a token already has a strategy launched
    /// @param token The address of the token to check
    /// @return True if token already has a strategy, false{
    function checkIfAlreadyLaunched(address token) public view returns (bool) {
        return tokenToStrategy[token] != address(0);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Deploys a new upgradeable ERC20Strategy contract
    /// @param _collection The NFT collection address
    /// @param _bagSize The size of the bag of tokens for the strategy to buy
    /// @param _hook The hook contract address
    /// @param _tokenName The name of the strategy token
    /// @param _tokenSymbol The symbol of the strategy token
    /// @param _buyIncrement The buy increment for price calculations
    /// @param _owner The owner of the ERC20Strategy contract
    /// @return proxy The deployed ERC20Strategy proxy contract
    /// @dev Uses ERC1967 proxy pattern with packed immutable args
    function _deployUpgradeableERC20Strategy(
        address _collection,
        uint256 _bagSize,
        address _hook,
        string memory _tokenName,
        string memory _tokenSymbol,
        uint256 _buyIncrement,
        address _owner
    ) internal returns (ERC20Strategy proxy) {
        bytes memory args = abi.encodePacked(
            address(this),
            router,
            poolManager
        );

        proxy = ERC20Strategy(
            payable(
                LibClone.deployERC1967(address(strategyImplementation), args)
            )
        );

        proxy.initialize(
            _collection,
            _bagSize,
            _hook,
            _tokenName,
            _tokenSymbol,
            _buyIncrement,
            launchUpgradeable ? _owner : address(0)
        );
    }
}
