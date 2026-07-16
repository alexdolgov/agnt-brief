// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IPositionManager {
    function setApprovalForAll(address operator, bool approved) external;

    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function burn(uint256 tokenId) external;

    function positions(
        uint256 tokenId
    )
        external
        view
        returns (
            uint96 nonce,
            address operator,
            address token0,
            address token1,
            int24 tickSpacing,
            int24 tickLower,
            int24 tickUpper,
            uint128 liquidity,
            uint256 feeGrowthInside0LastX128,
            uint256 feeGrowthInside1LastX128,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        );
}

contract PositionBurnHelper {
    IPositionManager public immutable positionManager;

    constructor(IPositionManager _positionManager) {
        positionManager = _positionManager;
    }

    function burnPositions() public {
        address sender = msg.sender;
        uint256 balance = positionManager.balanceOf(sender);
        uint256 i = balance - 1;
        do {
            uint256 tokenId = positionManager.tokenOfOwnerByIndex(sender, i);
            (, , , , , , , uint128 liquidity, , , uint128 tokensOwed0, uint128 tokensOwed1) = positionManager.positions(
                tokenId
            );
            if (liquidity == 0) {
                if (tokensOwed0 == 0) {
                    if (tokensOwed1 == 0) {
                        positionManager.burn(tokenId);
                    }
                }
            }
            --i;
        } while (i > 0);
    }
}
