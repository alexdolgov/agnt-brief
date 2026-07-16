// Sources flattened with hardhat v2.6.8 https://hardhat.org

// File @boringcrypto/boring-solidity/contracts/interfaces/[email protected]

pragma solidity 0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function decimals() external view returns (uint8);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // EIP 2612
    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;
}


// File @boringcrypto/boring-solidity/contracts/libraries/[email protected]

pragma solidity 0.8.9;
library BoringERC20 {
    function safeSymbol(IERC20 token) internal view returns(string memory) {
        (bool success, bytes memory data) = address(token).staticcall(abi.encodeWithSelector(0x95d89b41));
        return success && data.length > 0 ? abi.decode(data, (string)) : "???";
    }

    function safeName(IERC20 token) internal view returns(string memory) {
        (bool success, bytes memory data) = address(token).staticcall(abi.encodeWithSelector(0x06fdde03));
        return success && data.length > 0 ? abi.decode(data, (string)) : "???";
    }

    function safeDecimals(IERC20 token) internal view returns (uint8) {
        (bool success, bytes memory data) = address(token).staticcall(abi.encodeWithSelector(0x313ce567));
        return success && data.length == 32 ? abi.decode(data, (uint8)) : 18;
    }

    function safeTransfer(IERC20 token, address to, uint256 amount) internal {
        (bool success, bytes memory data) = address(token).call(abi.encodeWithSelector(0xa9059cbb, to, amount));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "BoringERC20: Transfer failed");
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 amount) internal {
        (bool success, bytes memory data) = address(token).call(abi.encodeWithSelector(0x23b872dd, from, to, amount));
        require(success && (data.length == 0 || abi.decode(data, (bool))), "BoringERC20: TransferFrom failed");
    }
}


// File @boringcrypto/boring-solidity/contracts/libraries/[email protected]

pragma solidity 0.8.9;
// a library for performing overflow-safe math, updated with awesomeness from of DappHub (https://github.com/dapphub/ds-math)
library BoringMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256 c) {require((c = a + b) >= b, "BoringMath: Add Overflow");}
    function sub(uint256 a, uint256 b) internal pure returns (uint256 c) {require((c = a - b) <= a, "BoringMath: Underflow");}
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {require(b == 0 || (c = a * b)/b == a, "BoringMath: Mul Overflow");}
    function to128(uint256 a) internal pure returns (uint128 c) {
    require(a <= (2**128 - 1), "BoringMath: uint128 Overflow");
    c = uint128(a);
}

function to64(uint256 a) internal pure returns (uint64 c) {
    require(a <= (2**64 - 1), "BoringMath: uint64 Overflow");
    c = uint64(a);
}

function to32(uint256 a) internal pure returns (uint32 c) {
    require(a <= (2**32 - 1), "BoringMath: uint32 Overflow");
    c = uint32(a);
}

}

library BoringMath128 {
    function add(uint128 a, uint128 b) internal pure returns (uint128 c) {require((c = a + b) >= b, "BoringMath: Add Overflow");}
    function sub(uint128 a, uint128 b) internal pure returns (uint128 c) {require((c = a - b) <= a, "BoringMath: Underflow");}
}

library BoringMath64 {
    function add(uint64 a, uint64 b) internal pure returns (uint64 c) {require((c = a + b) >= b, "BoringMath: Add Overflow");}
    function sub(uint64 a, uint64 b) internal pure returns (uint64 c) {require((c = a - b) <= a, "BoringMath: Underflow");}
}

library BoringMath32 {
    function add(uint32 a, uint32 b) internal pure returns (uint32 c) {require((c = a + b) >= b, "BoringMath: Add Overflow");}
    function sub(uint32 a, uint32 b) internal pure returns (uint32 c) {require((c = a - b) <= a, "BoringMath: Underflow");}
}


// File contracts/interfaces/IRewarder.sol

pragma solidity 0.8.9;
interface IRewarder {
    function claimReward(address recipient, uint256 rewardOwed, uint256 tokenId, address pool, uint32 rewardLastUpdated, uint32 rewardLastCollected) external;
    function pendingRewards(address pool, uint256 tokenId, uint256 rewardAmount) external view returns (IERC20[] memory, uint256[] memory);
}


// File contracts/PangolinV3Rewarder.sol

// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;
contract PangolinV3Rewarder is IRewarder, Ownable {
    using BoringMath for uint256;
    using BoringERC20 for IERC20;

    struct Pool {
        IERC20[] rewardTokens;
        uint256[] rewardMultipliers;
        uint32 endTime;
    }

    mapping(address => Pool) private pools;
    address private immutable NPM;

    uint256 private constant MAX_REWARDS = 100;

    mapping(address => mapping(uint256 => mapping(uint256 => uint256))) private rewardDebts;

    constructor (
        address _npm
    ) public {
        require(
            _npm != address(0),
            "PangolinV3Rewarder::Invalid NPM address"
        );
        NPM = _npm;
    }

    function claimReward(address recipient, uint256 rewardOwed, uint256 tokenId, address pool, uint32 rewardLastUpdated, uint32 rewardLastCollected) onlyNPM override external {
        for (uint256 i; i < pools[pool].rewardTokens.length; ++i) {
            uint256 pendingReward = rewardDebts[pool][tokenId][i].add(rewardOwed.mul(pools[pool].rewardMultipliers[i]) / 1e18);
            uint256 rewardBal = pools[pool].rewardTokens[i].balanceOf(address(this));
            if (pendingReward > rewardBal) {
                rewardDebts[pool][tokenId][i] = pendingReward - rewardBal;
                pools[pool].rewardTokens[i].safeTransfer(recipient, rewardBal);
            } else {
                rewardDebts[pool][tokenId][i] = 0;
                pools[pool].rewardTokens[i].safeTransfer(recipient, pendingReward);
            }
        }
    }

    function pendingRewards(address pool, uint256 tokenId, uint256 rewardAmount) override external view returns (IERC20[] memory tokens, uint256[] memory amounts) {
        amounts = new uint256[](pools[pool].rewardTokens.length);
        for (uint256 i; i < pools[pool].rewardTokens.length; ++i) {
            uint256 pendingReward = rewardDebts[pool][tokenId][i].add(rewardAmount.mul(pools[pool].rewardMultipliers[i]) / 1e18);
            uint256 rewardBal = pools[pool].rewardTokens[i].balanceOf(address(this));
            if (pendingReward > rewardBal) {
                amounts[i] = rewardBal;
            } else {
                amounts[i] = pendingReward;
            }
        }
        return (pools[pool].rewardTokens, amounts);
    }

    function setPoolRewards(
        address _pool,
        IERC20[] calldata _rewardTokens,
        uint256[] calldata _rewardMultipliers,
        uint8[] calldata _decimals,
        uint32 _endTime
    ) onlyOwner external {
        require(_pool != address(0), "Pool not equal zero");
        require(_endTime < type(uint32).max, "_endTime can not be less than max value");
        require(
            _rewardTokens.length > 0
            && _rewardTokens.length <= MAX_REWARDS
            && _rewardTokens.length == _rewardMultipliers.length,
            "PangolinV3Rewarder::Invalid input lengths"
        );

        for (uint256 i; i < _rewardTokens.length; ++i) {
            require(IERC20(_rewardTokens[i]).decimals() == _decimals[i], "PangolinV3Rewarder::Decimals error");
            require(address(_rewardTokens[i]) != address(0), "PangolinV3Rewarder::Cannot reward zero address");
            require(_rewardMultipliers[i] > 0, "PangolinV3Rewarder::Invalid multiplier");
        }

        delete pools[_pool].rewardTokens;
        delete pools[_pool].rewardMultipliers;
        delete pools[_pool].endTime;

        for (uint256 i = 0; i < _rewardTokens.length; i++) {
            pools[_pool].rewardTokens.push(_rewardTokens[i]);
            pools[_pool].rewardMultipliers.push(_rewardMultipliers[i]);
        }

        pools[_pool].endTime = _endTime;
    }

    function getRewardTokens(address _pool) external view returns (IERC20[] memory) {
        return pools[_pool].rewardTokens;
    }

    function getRewardMultipliers(address _pool) external view returns (uint256[] memory) {
        return pools[_pool].rewardMultipliers;
    }

    function getRewardDebt(address pool, uint256 tokenId, uint256 id) external view returns (uint256 rewardDebt) {
        return rewardDebts[pool][tokenId][id];
    }

    function getEndTime(address _pool) external view returns (uint32) {
        return pools[_pool].endTime;
    }

    function recoverERC20(address tokenAddress, uint256 tokenAmount) external onlyOwner {
        IERC20(tokenAddress).safeTransfer(owner(), tokenAmount);
    }

    function recoverETH() external onlyOwner {
		payable(msg.sender).transfer(address(this).balance);
	}

    modifier onlyNPM {
        require(
            msg.sender == NPM,
            "Only NPM can call this function."
        );
        _;
    }

}