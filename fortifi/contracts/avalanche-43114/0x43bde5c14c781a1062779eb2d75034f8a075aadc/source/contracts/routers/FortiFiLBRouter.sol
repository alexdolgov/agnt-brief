// SPDX-License-Identifier: GPL-3.0-only
// FortiFiLBRouter by FortiFi

import './libraries/TransferHelper.sol';
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

pragma solidity 0.8.21;

interface ILBRouter {
    enum Version {
        V1,
        V2,
        V2_1
    }

    /**
     * @dev The path parameters, such as:
     * - pairBinSteps: The list of bin steps of the pairs to go through
     * - versions: The list of versions of the pairs to go through
     * - tokenPath: The list of tokens in the path to go through
     */
    struct Path {
        uint256[] pairBinSteps;
        Version[] versions;
        IERC20[] tokenPath;
    }

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        Path memory path,
        address to,
        uint256 deadline
    ) external returns (uint256 amountOut);
}

/// @title FortiFiLBRouter
/// @notice This contract is used as a proxy interface for MASS vaults that need to access Trader Joe LB Liquidity
/// @dev Because you must specify bin steps, you will likely need a router for each pair you want to use
contract FortiFiLBRouter is Ownable {
    ILBRouter public lb;
    ILBRouter.Version public version = ILBRouter.Version.V2_1;
    uint256 public binSteps;

    constructor(address _router, uint256 _binSteps) {
        lb = ILBRouter(_router);
        binSteps = _binSteps;
    }

    function swapExactTokensForTokens(
            uint amountIn,
            uint amountOutMin,
            address[] calldata path,
            address to,
            uint deadline
        ) external returns (uint[] memory amounts) {
            TransferHelper.safeTransferFrom(path[0], msg.sender, address(this), amountIn);

            // Approve the router
            TransferHelper.safeApprove(path[0], address(lb), amountIn);

            IERC20[] memory tokenPath = new IERC20[](2);
            tokenPath[0] = IERC20(path[0]);
            tokenPath[1] = IERC20(path[1]);

            uint256[] memory pairBinSteps = new uint256[](1);
            pairBinSteps[0] = binSteps;

            ILBRouter.Version[] memory versions = new ILBRouter.Version[](1);
            versions[0] = version; // add the version of the Dex to perform the swap on

            ILBRouter.Path memory route; // instanciate and populate the path to perform the swap.
            route.pairBinSteps = pairBinSteps;
            route.versions = versions;
            route.tokenPath = tokenPath;

            uint256 amountOut = lb.swapExactTokensForTokens(amountIn, amountOutMin, route, to, deadline);

            uint[] memory _out = new uint[](1);
            _out[0] = amountOut;
            return _out;
        }

        function setV1() external onlyOwner {
            version = ILBRouter.Version.V1;
        }

        function setV2() external onlyOwner {
            version = ILBRouter.Version.V2;
        }

        function setV21() external onlyOwner {
            version = ILBRouter.Version.V2_1;
        }

        function setBinSteps(uint256 _binSteps) external onlyOwner {
            binSteps = _binSteps;
        }

        function setLB(address _lb) external onlyOwner {
            lb = ILBRouter(_lb);
        }
}