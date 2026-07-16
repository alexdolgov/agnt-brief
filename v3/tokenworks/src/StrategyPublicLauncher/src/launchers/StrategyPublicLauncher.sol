// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {
    INFTStrategyFactory,
    IERC20StrategyFactory,
    IERC20,
    IERC1155StrategyFactory,
    IERC1155Strategy,
    IRecursiveStrategyFactory
} from "../Interfaces.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {StrategyLauncher} from "./StrategyLauncher.sol";

struct StrategyPublicLauncherStorage {
    uint256 launchPrice;
    uint256 recursiveLaunchPrice;
}

library LibStrategyPublicLauncher {
    bytes32 internal constant STORAGE_POSITION =
        keccak256("strategy.public.launcher.storage");

    function getStorage()
        internal
        pure
        returns (StrategyPublicLauncherStorage storage ds)
    {
        bytes32 position = STORAGE_POSITION;
        assembly {
            ds.slot := position
        }
    }
}

/// @title StrategyPublicLauncher - A contract allowing to launch strategies
/// @author TokenWorks (https://token.works/)
/// @notice
contract StrategyPublicLauncher is StrategyLauncher {
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™                ™™™™™™™™™™™                ™™™™™™™™™™™ */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™               ™™™™™™™™™™™™™              ™™™™™™™™™™  */
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
    /*                     CONSTANTS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   STATE VARIABLES                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                   CUSTOM EVENTS                     */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    event StrategyLaunched(address indexed strategy, address account);

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CUSTOM ERRORS                    */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice triggered when not enough ETH is sent to take the bid
    error NotEnoughValue();
    /// @notice triggered when contract has no auction going on
    error NoAuction();
    /// @notice triggered when auction is set but not started
    error AuctionNotStarted();
    /// @notice triggered when trying to launch a strategy with the wrong type
    error InvalidTargetType();
    /// @notice triggered when trying to set too high buyIncrement
    error InvalidBuyIncrement();

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                    CONSTRUCTOR                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    constructor() StrategyLauncher() {}

    function initialize(
        address _nftFactory,
        address _erc20Factory,
        address _erc1155Factory,
        address _recursiveFactory,
        address _recipient
    ) external initializer {
        __StrategyLauncher_init(
            _nftFactory,
            _erc20Factory,
            _erc1155Factory,
            _recursiveFactory,
            _recipient
        );

        setLaunchPrice(1 ether);
        setRecursiveLaunchPrice(0.1 ether);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                     MODIFIERS                       */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        GETTERS	                   */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    function launchPrice() public view returns (uint256) {
        return LibStrategyPublicLauncher.getStorage().launchPrice;
    }

    function recursiveLaunchPrice() public view returns (uint256) {
        return LibStrategyPublicLauncher.getStorage().recursiveLaunchPrice;
    }
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        ACTIONS                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    function launch721(
        address target,
        string memory name,
        string memory ticker,
        uint256 buyIncrement,
        address feeRecipient
    ) public payable whenNotPaused onlyValidOperator(target, msg.sender) {
        _validateParams(name, ticker);

        if (msg.value != launchPrice()) {
            revert NotEnoughValue();
        }

        if (!_isERC721(target)) {
            revert InvalidTargetType();
        }

        if (buyIncrement < 0.01 ether || buyIncrement > 0.1 ether) {
            revert InvalidBuyIncrement();
        }

        address strategy = INFTStrategyFactory(nftFactory())
            .ownerLaunchNFTStrategy{value: 2 wei}(
            target,
            name,
            ticker,
            feeRecipient != address(0) ? feeRecipient : msg.sender,
            buyIncrement
        );

        emit StrategyLaunched(strategy, msg.sender);

        // we remove 2 wei used when deploying the strategy
        SafeTransferLib.forceSafeTransferETH(recipient(), msg.value - 2 wei);
    }

    function launch1155(
        address target,
        string memory name,
        string memory ticker,
        IERC1155Strategy.StrategyType strategyType,
        uint256[] calldata ids,
        uint256 buyIncrement,
        address feeRecipient
    ) public payable whenNotPaused onlyValidOperator(target, msg.sender) {
        _validateParams(name, ticker);

        if (msg.value != launchPrice()) {
            revert NotEnoughValue();
        }

        if (!_isERC1155(target)) {
            revert InvalidTargetType();
        }

        if (buyIncrement < 0.01 ether || buyIncrement > 0.1 ether) {
            revert InvalidBuyIncrement();
        }

        address strategy = IERC1155StrategyFactory(erc1155Factory())
            .ownerLaunchStrategy{value: 2 wei}(
            target,
            strategyType,
            ids,
            name,
            ticker,
            feeRecipient != address(0) ? feeRecipient : msg.sender,
            buyIncrement
        );

        emit StrategyLaunched(strategy, msg.sender);

        // we remove 2 wei used when deploying the strategy
        SafeTransferLib.forceSafeTransferETH(recipient(), msg.value - 2 wei);
    }

    function launch20(
        address target,
        string memory name,
        string memory ticker,
        uint256 bagSize,
        uint256 buyIncrement,
        address feeRecipient
    ) public payable whenNotPaused {
        _validateParams(name, ticker);

        if (msg.value != launchPrice()) {
            revert NotEnoughValue();
        }

        if (buyIncrement < 0.01 ether || buyIncrement > 0.1 ether) {
            revert InvalidBuyIncrement();
        }

        address strategy = IERC20StrategyFactory(erc20Factory())
            .ownerLaunchStrategy{value: 2 wei}(
            target,
            bagSize,
            name,
            ticker,
            !_isValidOperator(target, msg.sender) ? address(0) : (feeRecipient != address(0) ? feeRecipient : msg.sender),
            buyIncrement
        );

        emit StrategyLaunched(strategy, msg.sender);

        // we remove 2 wei used when deploying the strategy
        SafeTransferLib.forceSafeTransferETH(recipient(), msg.value - 2 wei);
    }

    function launchRecursive(
        string memory name,
        string memory ticker,
        string memory metadata,
        address feeRecipient
    ) public payable whenNotPaused {
        if (msg.value != recursiveLaunchPrice()) {
            revert NotEnoughValue();
        }

        address strategy = IRecursiveStrategyFactory(recursiveFactory())
            .ownerLaunchStrategy{value: 2 wei}(
            name,
            ticker,
            metadata,
            feeRecipient != address(0) ? feeRecipient : msg.sender
        );

        emit StrategyLaunched(strategy, msg.sender);

        SafeTransferLib.forceSafeTransferETH(recipient(), msg.value - 2 wei);
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                        ADMIN                      */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */

    /// @notice Starts launches
    function start() external onlyOwner {
        _unpause();
    }

    /// @notice Stops any launch
    function stop() external onlyOwner {
        _pause();
    }

    function setLaunchPrice(uint256 newLaunchPrize) public onlyOwner {
        LibStrategyPublicLauncher.getStorage().launchPrice = newLaunchPrize;
    }

    function setRecursiveLaunchPrice(uint256 newLaunchPrize) public onlyOwner {
        LibStrategyPublicLauncher
            .getStorage()
            .recursiveLaunchPrice = newLaunchPrize;
    }

    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
    /*                  INTERNAL FUNCTIONS                 */
    /* ™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™™ */
}
