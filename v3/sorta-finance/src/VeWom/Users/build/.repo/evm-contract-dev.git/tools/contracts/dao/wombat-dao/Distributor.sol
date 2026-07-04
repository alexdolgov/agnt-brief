//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/utils/math/SafeMath.sol';
import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';

import './libraries/SafeToken.sol';

abstract contract Distributor is OwnableUpgradeable {
    using SafeMath for uint256;
    using SafeToken for address;

    // account => shares
    mapping(address => uint256) public shares;

    // token => totalShares
    uint256 public totalShares;

    event AddReward(address indexed token, uint256 amount, uint256 newShareIndex);
    event UpdateCredit(address indexed token, address indexed account, uint256 lastShareIndex, uint256 credit);
    event EditRecipient(address indexed account, uint256 shares, uint256 totalShares);
    event Claim(address indexed token, address indexed account, uint256 amount);

    // Valid reward tokens
    address[] public tokens;
    uint256 public duration;
    mapping(address => uint256) public tokenIndexes;
    mapping(address => uint256) public finishAt;
    mapping(address => uint256) public updatedAt;
    mapping(address => mapping(address => uint256)) public rewards;
    mapping(address => uint256) public rewardRate;
    mapping(address => uint256) public rewardPerTokenStored;
    mapping(address => mapping(address => uint256)) public userRewardPerTokenPaid;
    mapping(address => mapping(address => uint256)) public userUpdatedAt;

    function __Distributor_init() internal {
        OwnableUpgradeable.__Ownable_init();
        tokens.push(address(0));
        duration = 30 days;
    }
    function tokenLength() external view returns (uint256 length) {
        length = tokens.length - 1;
    }

    function notifyRewardAmount(address _token, uint256 _amount)
        external
        updateReward(_token, address(0))
    {
        require(tokenIndexes[_token] > 0, 'Distributor: Invalid token');
        require(_amount > 0, "amount = 0");
        if (block.timestamp >= finishAt[_token]) {
            rewardRate[_token] = _amount / duration;
        } else {
            uint256 remainingRewards = (finishAt[_token] - block.timestamp) * rewardRate[_token];
            rewardRate[_token] = (_amount + remainingRewards) / duration;
        }
        require(rewardRate[_token] > 0, 'reward rate = 0');

        finishAt[_token] = block.timestamp + duration;
        updatedAt[_token] = block.timestamp;

        _token.safeTransferFrom(msg.sender, address(this), _amount);
        emit AddReward(_token, _amount, rewardRate[_token]);
    }

    function rewardPerToken(address _token) public view returns (uint256) {
        if (totalShares == 0) {
            return rewardPerTokenStored[_token];
        }

        return
            rewardPerTokenStored[_token] +
            (rewardRate[_token] * (lastTimeRewardApplicable(_token) - updatedAt[_token]) * 1e36) /
            totalShares;
    }

    modifier updateReward(address _token, address _account) {
        rewardPerTokenStored[_token] = rewardPerToken(_token);
        updatedAt[_token] = lastTimeRewardApplicable(_token);

        if (_account != address(0)) {
            rewards[_token][_account] = earned(_token, _account);
            userRewardPerTokenPaid[_token][_account] = rewardPerTokenStored[_token];
            userUpdatedAt[_token][_account] = block.timestamp;
        }

        _;
    }

    function earned(address _token, address _account) public view returns (uint256) {
        return
            ((shares[_account] *
                (rewardPerToken(_token) - userRewardPerTokenPaid[_token][_account])) / 1e36) +
            rewards[_token][_account];
    }

    function claim(address token) external returns (uint256 amount) {
        return claimInternal(token, msg.sender);
    }

    function claimAll() external returns (uint256[] memory amounts) {
        amounts = new uint256[](tokens.length);
        for (uint256 i = 1; i < tokens.length; i++) {
            amounts[i] = claimInternal(tokens[i], msg.sender);
        }
    }

    function claimInternal(address token, address account) internal updateReward(token, account) returns (uint256 amount) {
        require(tokenIndexes[token] > 0, 'Distributor: Invalid token');

        amount = rewards[token][account];
        if (amount > 0) {
            rewards[token][account] = 0;

            IERC20(token).transfer(account, amount);

            emit Claim(token, account, amount);
        }
    }

    function _updateReward(address _token, address _account) updateReward(_token, _account) internal { }
    function _editRecipientInternal(address account, uint256 shares_) internal {
        for (uint256 i = 1; i < tokens.length; i++) {
            _updateReward(tokens[i], account);
        }

        uint256 prevShares = shares[account];
        uint256 _totalShares = shares_ > prevShares
            ? totalShares.add(shares_ - prevShares)
            : totalShares.sub(prevShares - shares_);
        totalShares = _totalShares;
        shares[account] = shares_;
        emit EditRecipient(account, shares_, _totalShares);
    }

    /* Admin functions */
    function addToken(address token) external onlyOwner {
        require(tokenIndexes[token] == 0, 'Distributor: token already added');
        tokens.push(token);
        tokenIndexes[token] = tokens.length - 1;
    }

    function removeToken(address token) external onlyOwner {
        uint256 index = tokenIndexes[token];
        require(index > 0, 'Distributor: token not found');
        uint256 lastIndex = tokens.length - 1;
        if (index < lastIndex) {
            address lastToken = tokens[lastIndex];
            tokens[index] = lastToken;
            tokenIndexes[lastToken] = index;
        }
        tokens.pop();
        delete tokenIndexes[token];
    }

    function lastTimeRewardApplicable(address token) public view returns (uint256) {
        return _min(finishAt[token], block.timestamp);
    }
    function _min(uint256 x, uint256 y) private pure returns (uint256) {
        return x <= y ? x : y;
    }
}
