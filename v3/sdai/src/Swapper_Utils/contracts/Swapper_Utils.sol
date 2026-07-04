// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

// import "./interfaces/IERC20.sol";
import "./interfaces/ICoordinator.sol";
import "./interfaces/IAgToken.sol";
import "./interfaces/IAgaveOracle.sol";

contract Swapper_Utils {

    ICoordinator coordinator;

    constructor(address _coordinator) {
        coordinator = ICoordinator(_coordinator);
    }

    function priceCondition(address tokenIn, address tokenOut, uint256 priceOutOverIn) external view returns(bool){
        uint256 oraclePrice = priceView(tokenIn, tokenOut);

        if (priceOutOverIn >= oraclePrice){
          return true; // price is good
        }
        revert("Oracle: Bad price");
    }

    function priceView(address tokenIn, address tokenOut) public view returns(uint256) {
        IAgaveOracle oracle = IAgaveOracle(coordinator.Oracle());

        if (coordinator.isWagToken(tokenIn) && coordinator.isWagToken(tokenOut)) {
            tokenIn = IAgToken(coordinator.wrappedToUnderlying(tokenIn)).UNDERLYING_ASSET_ADDRESS();
            tokenOut = IAgToken(coordinator.wrappedToUnderlying(tokenOut)).UNDERLYING_ASSET_ADDRESS();
        }

        uint256 priceIn = oracle.getAssetPrice(tokenIn);
        uint256 priceOut = oracle.getAssetPrice(tokenOut);

        require(priceIn > 0 && priceOut > 0, "Oracle: Bad assets supplied");

        uint256 oraclePrice = priceOut * 1 ether / priceIn; // we use 18 decimals

        return oraclePrice;
    }
}