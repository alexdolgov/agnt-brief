// SPDX-License-Identifier: Unlicense

pragma solidity 0.7.6;
pragma abicoder v2;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";

import "./interfaces/IBlast.sol";
import "./interfaces/IBlastPoints.sol";
import "./interfaces/IERC20Rebasing.sol";
import "./interfaces/IHypervisor.sol";

contract Swap {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    IBlast public constant BLAST = IBlast(0x4300000000000000000000000000000000000002);
    IERC20Rebasing private constant USDB = IERC20Rebasing(0x4300000000000000000000000000000000000003);
    IERC20Rebasing private constant WETHB = IERC20Rebasing(0x4300000000000000000000000000000000000004);
    address private constant BLAST_POINTS = 0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800;

    address public owner;
    address public recipient;



    event Send(address token, address recipient, uint256 amount);

    constructor(
        address _owner,
        address _pointsOperator
    ) {
        owner = _owner;
        recipient = _owner;
        BLAST.configureClaimableGas();
        USDB.configure(YieldMode.CLAIMABLE);
        WETHB.configure(YieldMode.CLAIMABLE);
        IBlastPoints(BLAST_POINTS).configurePointsOperator(_pointsOperator);
    }


    function changeRecipient(address _recipient) external onlyOwner {
        recipient = _recipient;
    }

    function sendToken(address token, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(recipient, amount);
        emit Send(token, recipient, amount);
    }

    function transferOwnership(address newOwner) external onlyOwner {
        owner = newOwner;
    }

  function claimYieldAll(address _recipient, uint256 _amountWETH, uint256 _amountUSDB) 
        external  
        onlyOwner
        returns (uint256 amountWETH, uint256 amountUSDB, uint256 amountGas) 
    {
        amountWETH = IERC20Rebasing(WETHB).claim(_recipient, _amountWETH);
        amountUSDB = IERC20Rebasing(USDB).claim(_recipient, _amountUSDB);
        amountGas = IBlast(BLAST).claimMaxGas(address(this), _recipient);
    }

    modifier onlyOwner {
        require(msg.sender == owner, "only owner");
        _;
    }
}
