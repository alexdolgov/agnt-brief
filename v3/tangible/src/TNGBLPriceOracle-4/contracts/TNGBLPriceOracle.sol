// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

import "./constants/addresses.sol";
import "./interfaces/IPriceOracle.sol";
import "./AddressAccessor.sol";

interface IBaseOracle {
    function consult(
        address tokenIn,
        uint256 amountIn,
        address tokenOut
    ) external view returns (uint256);
}

contract TNGBLPriceOracle is AddressAccessor, IPriceOracle {
    address public immutable baseOracle;
    address public immutable baseDenominatorToken;

    address private _router;
    address private _output;
    address[] private _path;

    constructor(address baseOracle_, address baseDenominatorToken_) {
        baseOracle = baseOracle_;
        baseDenominatorToken = baseDenominatorToken_;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function quote(uint256 amountIn) external view returns (uint256 amountOut) {
        if (amountIn == 0) return 0;
        address tngbl = addressProvider.getAddress(TNGBL_ADDRESS);
        amountOut = IBaseOracle(baseOracle).consult(
            tngbl,
            amountIn,
            baseDenominatorToken
        );
        if (baseDenominatorToken != _output) {
            uint256[] memory amountsOut = IUniswapV2Router02(_router)
                .getAmountsOut(amountOut, _path);
            amountOut = amountsOut[amountsOut.length - 1];
        }
    }

    function setSwapRoute(address router, address[] memory path)
        public
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        require(path[0] == baseDenominatorToken, "invalid path");
        _router = router;
        _path = path;
        _output = path[path.length - 1];
        address underlying = addressProvider.getAddress(UNDERLYING_ADDRESS);
        require(_output == underlying, "invalid path");
    }
}
