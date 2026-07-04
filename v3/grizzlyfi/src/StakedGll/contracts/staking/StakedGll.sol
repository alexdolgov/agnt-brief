// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.6.12;

import "../libraries/math/SafeMath.sol";
import "../libraries/token/IERC20.sol";

import "../core/interfaces/IGllManager.sol";

import "./interfaces/IRewardTracker.sol";

contract StakedGll {
    using SafeMath for uint256;

    string public constant name = "StakedGll";
    string public constant symbol = "sGLL";
    uint8 public constant decimals = 18;

    address public gll;
    IGllManager public gllManager;
    address public feeGllTracker;

    mapping (address => mapping (address => uint256)) public allowances;

    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor(
        address _gll,
        IGllManager _gllManager,
        address _feeGllTracker
    ) public {
        gll = _gll;
        gllManager = _gllManager;
        feeGllTracker = _feeGllTracker;
    }

    function allowance(address _owner, address _spender) external view returns (uint256) {
        return allowances[_owner][_spender];
    }

    function approve(address _spender, uint256 _amount) external returns (bool) {
        _approve(msg.sender, _spender, _amount);
        return true;
    }

    function transfer(address _recipient, uint256 _amount) external returns (bool) {
        _transfer(msg.sender, _recipient, _amount);
        return true;
    }

    function transferFrom(address _sender, address _recipient, uint256 _amount) external returns (bool) {
        uint256 nextAllowance = allowances[_sender][msg.sender].sub(_amount, "StakedGll: transfer amount exceeds allowance");
        _approve(_sender, msg.sender, nextAllowance);
        _transfer(_sender, _recipient, _amount);
        return true;
    }

    function balanceOf(address _account) external view returns (uint256) {
        return IRewardTracker(feeGllTracker).depositBalances(_account, gll);
    }

    function totalSupply() external view returns (uint256) {
        return IERC20(feeGllTracker).totalSupply();
    }

    function _approve(address _owner, address _spender, uint256 _amount) private {
        require(_owner != address(0), "StakedGll: approve from the zero address");
        require(_spender != address(0), "StakedGll: approve to the zero address");

        allowances[_owner][_spender] = _amount;

        emit Approval(_owner, _spender, _amount);
    }

    function _transfer(address _sender, address _recipient, uint256 _amount) private {
        require(_sender != address(0), "StakedGll: transfer from the zero address");
        require(_recipient != address(0), "StakedGll: transfer to the zero address");

        require(
            gllManager.lastAddedAt(_sender).add(gllManager.cooldownDuration()) <= block.timestamp,
            "StakedGll: cooldown duration not yet passed"
        );
        IRewardTracker(feeGllTracker).unstakeForAccount(_sender, gll, _amount, _sender);
        IRewardTracker(feeGllTracker).stakeForAccount(_sender, _recipient, gll, _amount);
    }


}
