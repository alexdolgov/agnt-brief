pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interface/IStakedVectorETH.sol";
import "../interface/IvETH.sol";
import "../interface/IWETH.sol";

contract svETHZap {

    using SafeERC20 for IERC20;

    /// STATE VARIABLES ///

    address public immutable WETH;
    address public immutable vETH;
    address public immutable svETH;

    /// CONSTRUCTOR ///

    constructor(address _WETH, address _vETH, address _svETH) {
        WETH =  _WETH;
        vETH = _vETH;
        svETH = _svETH;

        IERC20(WETH).approve(vETH, type(uint256).max);
        IERC20(vETH).approve(svETH, type(uint256).max);
    }

    /// ZAP FUNCTIONS ///

    /// @notice     Zap ETH for svETH
    /// @param _to  Address to send svETH to
    function zapFromETH(
        address _to
    ) external payable {
        uint256 ethAmount = msg.value;
        require(ethAmount > 0, "Can not zap 0");
        IWETH(WETH).deposit{ value: ethAmount }();
        _zapFromWETH(_to, ethAmount);
    }


    /// @notice         Zap WETH for svETH
    /// @param _to      Address to send svETH to
    /// @param _amount  Amount of WETH to zap
    function zapFromWETH(
        address _to,
        uint256 _amount
    ) external {
        require(_amount > 0, "Can not zap 0");
        IERC20(WETH).safeTransferFrom(msg.sender, address(this), _amount);
       _zapFromWETH(_to, _amount);
    }    

    /// RECEIVE ///

    receive() external payable {
        uint256 ethAmount = msg.value;
        IWETH(WETH).deposit{ value: ethAmount }();
        _zapFromWETH(msg.sender, ethAmount);
    }

    /// INTERNAL FUNCTION ///    

    function _zapFromWETH(address _to, uint256 _amount) internal {
        IvETH(vETH).deposit(WETH, address(this), _amount);
        IStakedVectorETH(svETH).stake(_amount);
        IERC20(svETH).safeTransfer(_to, IERC20(svETH).balanceOf(address(this)));
    }

    
}