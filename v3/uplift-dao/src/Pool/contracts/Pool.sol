// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IPool.sol";

/// @title Contract for pool accumulation
contract Pool is IPool, ReentrancyGuard {

    using SafeERC20 for IERC20;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
    uint constant DECIMAL_MULTIPLIER = 2**112;

    mapping(address => uint) public override balanceOf;
    address public override registry;
    address public override token;
    uint public override totalSupply;

    mapping(address => uint) tokenRewardsOf;
    mapping(address => uint) lastAccumulatedTokenPerTotalSupplyInBase;
    uint accumulatedTokenPerTotalSupplyInBase;
    uint lastTokenBalance;

    constructor(address _registry, address _token) {
        require(_registry != address(0) && _token != address(0), "Pool: ZERO");
        registry = _registry;
        token = _token;
    }

    /// @param _token New token
    function setToken(address _token) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_token != address(0), "Pool: ZERO");
        token = _token; 
        emit SetToken(_token);
    }

    /// @notice Mint shares for user
    /// @param _account User
    /// @param _amount Shares to mint
    function mint(address _account, uint _amount) external virtual override nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        _mint(_account, _amount);
    }

    /// @notice Burn shares for user
    /// @param _account User
    /// @param _amount Shares to burn
    function burn(address _account, uint _amount) external virtual override nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        _burn(_account, _amount);
    } 

    /// @notice Withdraw reward. User can wuthdraw only his reward
    function withdraw() external virtual override nonReentrant accumulateRewards(msg.sender) returns (uint) {
        uint tokenRewards = tokenRewardsOf[msg.sender];
        if (tokenRewards > 0) {
            tokenRewardsOf[msg.sender] = 0; 
            IERC20(token).safeTransfer(msg.sender, tokenRewards);
            emit Withdraw(msg.sender, tokenRewards);
        }
        return tokenRewards;
    }

    /// @notice See expected reward for user
    /// @param _account User
    function withdrawableRewardsOf(address _account) public virtual override view returns (uint) {
        return _withdrawableRewardsOf(_account, IERC20(token).balanceOf(address(this)));
    }

    modifier onlyRole(bytes32 role) {
        require(IAccessControl(registry).hasRole(role, msg.sender), "Pool: FORBIDDEN");
        _;
    }

    modifier accumulateRewards(address _account) virtual {
        uint _totalSupply = totalSupply;
        if (_totalSupply > 0) {
            uint tokenIncrease = IERC20(token).balanceOf(address(this)) - lastTokenBalance;
            if (tokenIncrease > 0) {
                unchecked { // overflow is desired
                    accumulatedTokenPerTotalSupplyInBase += tokenIncrease * DECIMAL_MULTIPLIER / _totalSupply;
                }
            }

        }
        _accumulateAccountRewards(_account);
        _;
        if (_totalSupply > 0) {
            lastTokenBalance = IERC20(token).balanceOf(address(this));
        }
    }

    function _mint(address _account, uint _amount) internal accumulateRewards(_account) {
        balanceOf[_account] += _amount;
        totalSupply += _amount;
        emit Mint(_account, _amount);
    }

    function _burn(address _account, uint _amount) internal accumulateRewards(_account) {
        balanceOf[_account] -= _amount;
        totalSupply -= _amount;
        emit Burn(_account, _amount);
    } 

    function _withdrawableRewardsOf(address _account, uint _currentBalance) internal virtual view returns (uint) {
        uint _accumulatedTokenPerTotalSupplyInBase = accumulatedTokenPerTotalSupplyInBase;
        if (totalSupply > 0) {
            uint tokenIncrease = _currentBalance - lastTokenBalance;
            if (tokenIncrease > 0) {
                unchecked { // overflow is desired
                    _accumulatedTokenPerTotalSupplyInBase += tokenIncrease * DECIMAL_MULTIPLIER / totalSupply;
                }
            }
        }
        uint _lastAccumulatedTokenPerTotalSupplyInBase = balanceOf[_account] == 0
            ? _accumulatedTokenPerTotalSupplyInBase 
            : lastAccumulatedTokenPerTotalSupplyInBase[_account];
        uint accumulatedTokenPerTotalSupplyInBaseIncrease;
        unchecked { // overflow is desired
            accumulatedTokenPerTotalSupplyInBaseIncrease = _accumulatedTokenPerTotalSupplyInBase - _lastAccumulatedTokenPerTotalSupplyInBase;
        }
        uint tokenRewardsIncrease = balanceOf[_account] * accumulatedTokenPerTotalSupplyInBaseIncrease / DECIMAL_MULTIPLIER;
        return tokenRewardsIncrease + tokenRewardsOf[_account];
    }

    function _accumulateAccountRewards(address _account) internal virtual {
        uint _lastAccumulatedTokenPerTotalSupplyInBase = balanceOf[_account] == 0 
            ? accumulatedTokenPerTotalSupplyInBase 
            : lastAccumulatedTokenPerTotalSupplyInBase[_account];

        uint accumulatedTokenPerTotalSupplyInBaseIncrease;
        unchecked { // overflow is desired
            accumulatedTokenPerTotalSupplyInBaseIncrease = accumulatedTokenPerTotalSupplyInBase - _lastAccumulatedTokenPerTotalSupplyInBase;
        }

        if (accumulatedTokenPerTotalSupplyInBaseIncrease > 0) {
            uint tokenIncrease = balanceOf[_account] * accumulatedTokenPerTotalSupplyInBaseIncrease / DECIMAL_MULTIPLIER;
            if (tokenIncrease > 0) {
                tokenRewardsOf[_account] += tokenIncrease;
            }
        }
        lastAccumulatedTokenPerTotalSupplyInBase[_account] = accumulatedTokenPerTotalSupplyInBase;
    }
}