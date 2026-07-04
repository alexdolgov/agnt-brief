// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

import '@openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/IERC721Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/ERC721HolderUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/EnumerableSetUpgradeable.sol';

import './ISimpleStakeERC721EarnERC20.sol';
import './interfaces/IAlchemyToysToken.sol';

contract SimpleStakeToysEarnERC20 is
    ISimpleStakeERC721EarnERC20,
    ERC721HolderUpgradeable,
    OwnableUpgradeable,
    PausableUpgradeable
{
    using SafeERC20Upgradeable for IERC20Upgradeable;
    using SafeMathUpgradeable for uint256;
    using AddressUpgradeable for address;
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.UintSet;

    // Info of each user.
    struct UserInfo {
        uint256 stakingPower;
        uint256 rewardDebt;
    }

    uint256 accTokenPerShare; // Accumulated TOKENs per share, times 1e12. See below.
    uint256 public constant accTokenPerShareMultiple = 1E18; // Accumulated TOKENs per share, times 1e12.
    uint256 public constant ONE_POWER_EIGHTEEN = 1E18;
    uint256 lastRewardBlock; // Last block number that TOKENs distribution occurs.
    uint256 totalStakingPower; // total has deposit to pool stakingPower
    // The block number when TOKEN mining starts.
    uint256 public startBlock;
    // TOKEN tokens created per block.
    uint256 public tokenPerBlock;
    // total TOKEN to be mint amount
    uint256 public totalToBeMintAmount;
    // minted TOKEN amount
    uint256 public mintedAmount;
    // The TOKEN TOKEN!
    ERC20Upgradeable public token;
    IAlchemyToysToken public erc721;
    mapping(address => UserInfo) private _userInfoMap;
    mapping(uint256 => uint256) public nftTokenStakingPowerMap;
    mapping(address => EnumerableSetUpgradeable.UintSet) private _userStakingTokens;

    function initialize(
        address _erc721,
        address _token,
        uint256 _startBlock,
        uint256 _tokenPerBlock,
        uint256 _totalToBeMintAmount
    ) external override initializer {
        __Context_init_unchained();
        __Ownable_init_unchained();
        __Pausable_init_unchained();
        __ERC721Holder_init_unchained();
        token = ERC20Upgradeable(_token);
        erc721 = IAlchemyToysToken(_erc721);
        startBlock = _startBlock;
        tokenPerBlock = _tokenPerBlock;
        totalToBeMintAmount = _totalToBeMintAmount;
    }

    function setStartBlock(uint256 _startBlock) public onlyOwner {
        require(block.number <= _startBlock && startBlock >= block.number, 'FORBIDDEN');
        startBlock = _startBlock;
    }

    function setNftTokenStakingPower(uint256 _tokenId, uint256 _stakingPower) public onlyOwner {
        nftTokenStakingPowerMap[_tokenId] = _stakingPower;
    }

    function setNftTokenStakingPowerFromTo(
        uint256 _fromTokenId,
        uint256 _toTokenId,
        uint256 _stakingPower
    ) public onlyOwner {
        for (; _fromTokenId <= _toTokenId; _fromTokenId++) {
            setNftTokenStakingPower(_fromTokenId, _stakingPower);
        }
    }

    function _canStake(uint256 _tokenId) internal view returns (bool) {
        (, uint256 level, ) = erc721.tokenInfo(_tokenId);
        return level > 0;
    }

    function canStake(uint256[] calldata _tokenIds) external view returns (bool[] memory canStakes) {
        canStakes = new bool[](_tokenIds.length);
        for (uint256 i = 0; i < _tokenIds.length; ++i) {
            canStakes[i] = _canStake(_tokenIds[i]);
        }
    }

    function batchSetNftTokenStakingPower(uint256[] memory _tokenIds, uint256[] memory _stakingPowers)
        public
        onlyOwner
    {
        require(_tokenIds.length == _stakingPowers.length, 'LENGTH ERROR');
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            setNftTokenStakingPower(_tokenIds[i], _stakingPowers[i]);
        }
    }

    // Return total reward over the given _from to _to block.
    function getTotalReward(uint256 _from, uint256 _to) public view override returns (uint256 totalReward) {
        if (_to <= startBlock || mintedAmount >= totalToBeMintAmount) {
            return 0;
        }
        if (_from < startBlock) {
            _from = startBlock;
        }
        return MathUpgradeable.min(totalToBeMintAmount.sub(mintedAmount), _to.sub(_from).mul(tokenPerBlock));
    }

    // View function to see pending TOKENs on frontend.
    function pendingToken(address _user) external view override returns (uint256) {
        UserInfo storage userInfo = _userInfoMap[_user];
        uint256 _accBakePerShare = accTokenPerShare;
        uint256 stakingPower = totalStakingPower.mul(10**uint256(token.decimals())).div(ONE_POWER_EIGHTEEN);
        if (block.number > lastRewardBlock && stakingPower != 0) {
            uint256 totalReward = getTotalReward(lastRewardBlock, block.number);
            _accBakePerShare = _accBakePerShare.add(totalReward.mul(accTokenPerShareMultiple).div(stakingPower));
        }
        return
            userInfo
                .stakingPower
                .mul(_accBakePerShare)
                .mul(10**uint256(token.decimals()))
                .div(ONE_POWER_EIGHTEEN)
                .div(accTokenPerShareMultiple)
                .sub(userInfo.rewardDebt);
    }

    function updateStaking() public override {
        if (block.number <= lastRewardBlock) {
            return;
        }
        uint256 stakingPower = totalStakingPower.mul(10**uint256(token.decimals())).div(ONE_POWER_EIGHTEEN);
        if (stakingPower == 0) {
            lastRewardBlock = block.number;
            return;
        }
        if (mintedAmount >= totalToBeMintAmount) {
            return;
        }
        uint256 totalReward = getTotalReward(lastRewardBlock, block.number);
        mintedAmount = mintedAmount.add(totalReward);
        accTokenPerShare = accTokenPerShare.add(totalReward.mul(accTokenPerShareMultiple).div(stakingPower));
        lastRewardBlock = block.number;
    }

    function _harvest(UserInfo storage userInfo) internal {
        updateStaking();
        if (userInfo.stakingPower != 0) {
            uint256 pending =
                userInfo
                    .stakingPower
                    .mul(accTokenPerShare)
                    .mul(10**uint256(token.decimals()))
                    .div(ONE_POWER_EIGHTEEN)
                    .div(accTokenPerShareMultiple)
                    .sub(userInfo.rewardDebt);
            if (pending != 0) {
                safeTokenTransfer(_msgSender(), pending);
                emit Harvest(_msgSender(), pending);
            }
        }
    }

    function harvest() external override {
        UserInfo storage userInfo = _userInfoMap[_msgSender()];
        _harvest(userInfo);
        userInfo.rewardDebt = userInfo
            .stakingPower
            .mul(accTokenPerShare)
            .mul(10**uint256(token.decimals()))
            .div(ONE_POWER_EIGHTEEN)
            .div(accTokenPerShareMultiple);
    }

    // Stake LP tokens to TokenMaster for TOKEN allocation.
    function stake(uint256 _tokenId) public override whenNotPaused {
        UserInfo storage userInfo = _userInfoMap[_msgSender()];
        _harvest(userInfo);
        erc721.safeTransferFrom(_msgSender(), address(this), _tokenId);
        uint256 stakingPower = nftTokenStakingPowerMap[_tokenId];
        if (stakingPower == 0) {
            stakingPower = ONE_POWER_EIGHTEEN;
            nftTokenStakingPowerMap[_tokenId] = stakingPower;
        }
        userInfo.stakingPower = userInfo.stakingPower.add(stakingPower);
        _userStakingTokens[_msgSender()].add(_tokenId);
        totalStakingPower = totalStakingPower.add(stakingPower);
        userInfo.rewardDebt = userInfo
            .stakingPower
            .mul(accTokenPerShare)
            .mul(10**uint256(token.decimals()))
            .div(ONE_POWER_EIGHTEEN)
            .div(accTokenPerShareMultiple);
        emit Stake(_msgSender(), _tokenId, stakingPower);
    }

    function batchStake(uint256[] calldata _tokenIds) external override whenNotPaused {
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            stake(_tokenIds[i]);
        }
    }

    // Unstake LP tokens from TokenMaster.
    function unstake(uint256 _tokenId) public override {
        require(_userStakingTokens[_msgSender()].contains(_tokenId), 'UNSTAKE FORBIDDEN');
        UserInfo storage userInfo = _userInfoMap[_msgSender()];
        _harvest(userInfo);
        uint256 stakingPower = nftTokenStakingPowerMap[_tokenId];
        userInfo.stakingPower = userInfo.stakingPower.sub(stakingPower);
        _userStakingTokens[_msgSender()].remove(_tokenId);
        erc721.safeTransferFrom(address(this), _msgSender(), _tokenId);
        totalStakingPower = totalStakingPower.sub(stakingPower);
        userInfo.rewardDebt = userInfo
            .stakingPower
            .mul(accTokenPerShare)
            .mul(10**uint256(token.decimals()))
            .div(ONE_POWER_EIGHTEEN)
            .div(accTokenPerShareMultiple);
        emit Unstake(_msgSender(), _tokenId, stakingPower);
    }

    function batchUnstake(uint256[] calldata _tokenIds) external override {
        for (uint256 i = 0; i < _tokenIds.length; i++) {
            unstake(_tokenIds[i]);
        }
    }

    function unstakeAll() external override {
        EnumerableSetUpgradeable.UintSet storage stakingTokens = _userStakingTokens[_msgSender()];
        uint256 length = stakingTokens.length();
        for (uint256 i = 0; i < length; ++i) {
            unstake(stakingTokens.at(0));
        }
    }

    function emergencyUnstake(uint256 _tokenId) public override {
        require(_userStakingTokens[_msgSender()].contains(_tokenId), ' EMERGENCY UNSTAKE FORBIDDEN');
        UserInfo storage userInfo = _userInfoMap[_msgSender()];
        uint256 stakingPower = nftTokenStakingPowerMap[_tokenId];
        userInfo.stakingPower = userInfo.stakingPower.sub(stakingPower);
        _userStakingTokens[_msgSender()].remove(_tokenId);
        erc721.safeTransferFrom(address(this), _msgSender(), _tokenId);
        totalStakingPower = totalStakingPower.sub(stakingPower);
        userInfo.rewardDebt = userInfo
            .stakingPower
            .mul(accTokenPerShare)
            .mul(10**uint256(token.decimals()))
            .div(ONE_POWER_EIGHTEEN)
            .div(accTokenPerShareMultiple);
        emit EmergencyUnstake(_msgSender(), _tokenId, stakingPower);
    }

    function emergencyUnstakeAll() external override {
        EnumerableSetUpgradeable.UintSet storage stakingTokens = _userStakingTokens[_msgSender()];
        uint256 length = stakingTokens.length();
        for (uint256 i = 0; i < length; ++i) {
            emergencyUnstake(stakingTokens.at(0));
        }
    }

    // Safe token transfer function, just in case if rounding error causes pool to not have enough TOKENs.
    function safeTokenTransfer(address _to, uint256 _amount) internal {
        uint256 tokenBal = token.balanceOf(address(this));
        if (_amount > tokenBal) {
            token.transfer(_to, tokenBal);
        } else {
            token.transfer(_to, _amount);
        }
    }

    function pauseStake() external override onlyOwner whenNotPaused {
        _pause();
    }

    function unpauseStake() external override onlyOwner whenPaused {
        _unpause();
    }

    function setTokenPerBlock(uint256 _tokenPerBlock) external override onlyOwner {
        require(tokenPerBlock != _tokenPerBlock, ' NOT NEED UPDATE');
        emit SetTokenPerBlock(msg.sender, _tokenPerBlock);
        tokenPerBlock = _tokenPerBlock;
    }

    function setTotalToBeMintAmount(uint256 _totalToBeMintAmount) external override onlyOwner {
        require(totalToBeMintAmount != _totalToBeMintAmount, 'Not need update');
        emit SetTotalToBeMintAmount(msg.sender, totalToBeMintAmount, _totalToBeMintAmount);
        totalToBeMintAmount = _totalToBeMintAmount;
    }

    function getUserInfo(address user)
        public
        view
        returns (
            uint256,
            uint256,
            uint256[] memory
        )
    {
        UserInfo memory userInfo = _userInfoMap[user];
        uint256[] memory tokenIds = new uint256[](_userStakingTokens[user].length());
        for (uint256 i = 0; i < tokenIds.length; ++i) {
            tokenIds[i] = _userStakingTokens[user].at(i);
        }
        return (userInfo.stakingPower, userInfo.rewardDebt, tokenIds);
    }
}
