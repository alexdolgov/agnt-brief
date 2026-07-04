// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IPickemSlateFactory} from "./interfaces/IPickemSlateFactory.sol";
import {ICentralVault} from "./interfaces/ICentralVault.sol";
import {ICVPositions} from "./interfaces/ICVPositions.sol";
import {IConditionalTokens} from "./interfaces/IConditionalTokens.sol";
import {IERC20} from "./interfaces/IERC20.sol";
import {IMarket} from "./interfaces/IMarket.sol";

/// @title PickemSlateFactory
/// @notice Registers slates from existing Seer markets; enters and redeems via CentralVault per market.
contract PickemSlateFactory is IPickemSlateFactory {
    uint256 public constant MAX_MARKETS = 32;

    ICentralVault public immutable centralVault;
    IConditionalTokens public immutable conditionalTokens;
    ICVPositions public immutable cvPositions;

    uint256 public nextSlateId = 1;

    mapping(uint256 => PickemSlate) internal _slates;

    error EmptyName();
    error EmptyMarkets();
    error TooManyMarkets();
    error ZeroCollateral();
    error ZeroMarket();
    error InvalidSlateId();
    error InvalidWeightsLength();
    error InvalidAmountsLength();
    error ZeroAmount();
    error CollateralTransferFailed();
    error CollateralApproveFailed();
    error PositionTransferFailed();
    error PositionPullFailed();

    constructor(ICentralVault centralVault_) {
        centralVault = centralVault_;
        conditionalTokens = centralVault_.conditionalTokens();
        cvPositions = centralVault_.cvPositions();
    }

    /// @inheritdoc IPickemSlateFactory
    function getSlate(uint256 slateId) external view returns (PickemSlate memory) {
        return _slates[slateId];
    }

    /// @inheritdoc IPickemSlateFactory
    function createSlate(CreateSlateParams calldata params) external returns (uint256 slateId) {
        if (bytes(params.name).length == 0) revert EmptyName();

        uint256 marketCount = params.markets.length;
        if (marketCount == 0) revert EmptyMarkets();
        if (marketCount > MAX_MARKETS) revert TooManyMarkets();
        if (address(params.collateral) == address(0)) revert ZeroCollateral();

        slateId = nextSlateId++;
        IMarket[] memory markets = new IMarket[](marketCount);

        for (uint256 i = 0; i < marketCount; i++) {
            if (params.markets[i] == address(0)) revert ZeroMarket();
            markets[i] = IMarket(params.markets[i]);
        }

        _slates[slateId] = PickemSlate({
            name: params.name,
            creator: msg.sender,
            collateral: params.collateral,
            markets: markets,
            createdAt: uint32(block.timestamp)
        });

        emit SlateCreated(slateId, params.name, params.markets, msg.sender);
    }

    /// @inheritdoc IPickemSlateFactory
    function enterSlate(uint256 slateId, uint256 amountPerMatch, uint256[][] calldata weightsPerMatch) external {
        if (amountPerMatch == 0) revert ZeroAmount();

        PickemSlate storage slate = _requireSlate(slateId);
        IERC20 collateral = slate.collateral;
        uint256 marketCount = slate.markets.length;
        if (weightsPerMatch.length != marketCount) revert InvalidWeightsLength();

        uint256 total = amountPerMatch * marketCount;
        if (!collateral.transferFrom(msg.sender, address(this), total)) revert CollateralTransferFailed();
        if (!collateral.approve(address(centralVault), total)) revert CollateralApproveFailed();

        for (uint256 i = 0; i < marketCount; i++) {
            IMarket market = slate.markets[i];
            centralVault.enterPosition(collateral, market, amountPerMatch, weightsPerMatch[i]);
            _forwardPositionTokens(msg.sender, market);
        }

        uint256 leftover = collateral.balanceOf(address(this));
        if (leftover > 0) {
            if (!collateral.transfer(msg.sender, leftover)) revert CollateralTransferFailed();
        }

        emit SlatePositionEntered(slateId, msg.sender, amountPerMatch);
    }

    /// @inheritdoc IPickemSlateFactory
    function redeemSlate(uint256 slateId, uint256[][] calldata amountsPerMatch) external returns (uint256 totalPayout) {
        PickemSlate storage slate = _requireSlate(slateId);
        IERC20 collateral = slate.collateral;
        uint256 marketCount = slate.markets.length;
        if (amountsPerMatch.length != marketCount) revert InvalidAmountsLength();

        for (uint256 i = 0; i < marketCount; i++) {
            IMarket market = slate.markets[i];
            uint256 slotCount = conditionalTokens.getOutcomeSlotCount(market.conditionId());
            if (amountsPerMatch[i].length != slotCount) revert InvalidAmountsLength();

            for (uint256 j = 0; j < slotCount; j++) {
                uint256 amount = amountsPerMatch[i][j];
                if (amount > 0) {
                    uint256 tokenId = cvPositions.tokenId(market, j);
                    cvPositions.safeTransferFrom(msg.sender, address(this), tokenId, amount, "");
                }
            }

            uint256 before = collateral.balanceOf(address(this));
            centralVault.redeem(collateral, market, amountsPerMatch[i]);
            uint256 payout = collateral.balanceOf(address(this)) - before;
            if (payout > 0) {
                if (!collateral.transfer(msg.sender, payout)) revert CollateralTransferFailed();
            }
            totalPayout += payout;
        }

        emit SlateRedeemed(slateId, msg.sender, totalPayout);
    }

    function _requireSlate(uint256 slateId) internal view returns (PickemSlate storage slate) {
        if (slateId == 0 || slateId >= nextSlateId) revert InvalidSlateId();
        slate = _slates[slateId];
        if (slate.markets.length == 0) revert InvalidSlateId();
    }

    /// @dev CentralVault mints position tokens to this contract; forward them to the user.
    function _forwardPositionTokens(address user, IMarket market) internal {
        uint256 slotCount = conditionalTokens.getOutcomeSlotCount(market.conditionId());
        for (uint256 j = 0; j < slotCount; j++) {
            uint256 tokenId = cvPositions.tokenId(market, j);
            uint256 balance = cvPositions.balanceOf(address(this), tokenId);
            if (balance > 0) {
                cvPositions.safeTransferFrom(address(this), user, tokenId, balance, "");
            }
        }
    }
}
