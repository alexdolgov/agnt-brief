// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import '@openzeppelin/contracts/access/Ownable2Step.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '../../staking/IDistributor.sol';
import '../../../interfaces/IGauge.sol';

contract StakingRewardDistributorGauge is IGauge, Ownable2Step {
    using SafeERC20 for IERC20;

    IDistributor public immutable REWARD_DISTRIBUTOR;
    IERC20 public immutable TOKEN;

    constructor(address _token, address _tokenDistributor) Ownable(msg.sender) {
        require(_token != address(0), 'Zero token address');
        TOKEN = IERC20(_token);

        require(_tokenDistributor != address(0), 'Zero receiver address');
        REWARD_DISTRIBUTOR = IDistributor(_tokenDistributor);
    }

    function distribute(uint256 amount) external virtual {
        TOKEN.safeIncreaseAllowance(address(REWARD_DISTRIBUTOR), amount);
        REWARD_DISTRIBUTOR.distribute(address(TOKEN), amount);
    }

    function withdrawEmergency(IERC20 _token) external onlyOwner {
        uint256 tokenBalance = _token.balanceOf(address(this));
        if (tokenBalance > 0) {
            _token.safeTransfer(msg.sender, tokenBalance);
        }
    }
}
