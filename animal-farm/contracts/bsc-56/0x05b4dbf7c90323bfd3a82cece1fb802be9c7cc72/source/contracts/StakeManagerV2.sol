// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./StakeManager.sol";
import "./DogsNftManager.sol";

contract StakeManagerV2 is Ownable {
    struct UserInfoV2 {
        uint256 activeStakesCount;
        mapping(uint256 => StakeInfo) activeStakes;
    }

    struct StakeInfo {
        uint256 amount;
        uint256 startTime;
        bool isAutoPool;
    }

    struct StakeInfoView {
        uint256 stakeID;
        uint256 taxReduction;
        uint256 amount;
        uint256 startTime;
        bool isAutoPool;
    }

    struct WithdrawnStakeInfoOld {
        uint256 amount;
        uint256 taxReduction;
        uint256 endTime;
        bool isAutoPool;
    }

    struct WithdrawnStakeInfo {
        uint256 taxReduction;
        uint256 endTime;
        bool isAutoPool;
    }

    struct WithdrawnStakeInfoView {
        uint256 nftID;
        uint256 currentAmount;
        uint256 potentialAmount;
        uint256 taxReduction;
        uint256 endTime;
        bool isAutoPool;
    }

    mapping(address => UserInfoV2) public userInfo;
    mapping(uint256 => WithdrawnStakeInfo) public nftWithdrawnStakes;
    mapping(address => bool) public allowedAddress;
    mapping(address => bool) public initAddress;

    StakeManager public stakeManagerV1 =
        StakeManager(0x25A959dDaEcEb50c1B724C603A57fe7b32eCbEeA);
    DogsNftManager public nftManager;
    uint256 public reliefPerDay = 75; // 0.75% default
    uint256 public reliefPerDayExtra = 25; // 0.25%

    constructor(address _DogPoundManger, address _DogsNftManager) {
        allowedAddress[_DogPoundManger] = true;
        nftManager = DogsNftManager(_DogsNftManager);
    }

    modifier onlyAllowedAddress() {
        require(allowedAddress[msg.sender], "allowed only");
        _;
    }

    function saveStake(
        address _user,
        uint256 _amount,
        bool _isAutoCompound
    ) external onlyAllowedAddress {
        if (!initAddress[_user]) {
            userInfo[_user].activeStakesCount = getOldActiveStakeCount(_user);
            initAddress[_user] = true;
        }
        UserInfoV2 storage user = userInfo[_user];
        user.activeStakes[user.activeStakesCount].amount = _amount;
        user.activeStakes[user.activeStakesCount].startTime = block.timestamp;
        user.activeStakes[user.activeStakesCount].isAutoPool = _isAutoCompound;
        user.activeStakesCount++;
    }

    function saveStakeOldUserInit(
        address _user,
        uint256 _amount,
        bool _isAutoCompound,
        uint256 _lastActiveStake
    ) external onlyAllowedAddress {
        require(
            !initAddress[_user] &&
                stakeManagerV1
                    .getUserActiveStake(_user, _lastActiveStake)
                    .startTime !=
                0 &&
                stakeManagerV1
                    .getUserActiveStake(_user, _lastActiveStake + 1)
                    .startTime ==
                0,
            "Passed stake isnt last stake"
        );
        userInfo[_user].activeStakesCount == _lastActiveStake + 1;
        initAddress[_user] = true;
        UserInfoV2 storage user = userInfo[_user];
        user.activeStakes[user.activeStakesCount].amount = _amount;
        user.activeStakes[user.activeStakesCount].startTime = block.timestamp;
        user.activeStakes[user.activeStakesCount].isAutoPool = _isAutoCompound;
        user.activeStakesCount++;
    }

    function withdrawFromStake(
        address _user,
        uint256 _amount,
        uint256 _stakeID,
        address _from
    ) external onlyAllowedAddress {
        UserInfoV2 storage user = userInfo[_user];
        StakeInfo storage activeStake = user.activeStakes[_stakeID];
        if (activeStake.startTime == 0) {
            user.activeStakes[_stakeID] = activeStakeMove(_user, _stakeID);
            activeStake = user.activeStakes[_stakeID];
        }
        require(_amount > 0, "withdraw: zero amount");
        require(activeStake.amount >= _amount, "withdraw: not good");
        uint256 taxReduction = getActiveStakeTaxReduction(_user, _stakeID);
        bool isAutoCompound = activeStake.isAutoPool;
        uint256 nftTokenID = nftManager.mintForWithdrawnStake(
            _user,
            _amount,
            _from
        );
        nftWithdrawnStakes[nftTokenID].taxReduction = taxReduction;
        nftWithdrawnStakes[nftTokenID].endTime = block.timestamp;
        nftWithdrawnStakes[nftTokenID].isAutoPool = isAutoCompound;
        activeStake.amount -= _amount;
    }

    function mergeNFTs(
        //burning usage and aggregation permissions has to be handled outside
        address _from,
        address _to,
        uint256 _amount,
        uint256 _mergeFrom
    ) external onlyAllowedAddress {
        uint256 _nftTokenID = nftManager.mintForWithdrawnStake(
            _to,
            _amount,
            _from
        );
        uint256 _taxReduction = nftWithdrawnStakes[_mergeFrom].taxReduction;
        bool _isAutoCompound = nftWithdrawnStakes[_mergeFrom].isAutoPool;
        uint256 _endTime = nftWithdrawnStakes[_mergeFrom].endTime;
        nftWithdrawnStakes[_nftTokenID].taxReduction = _taxReduction;
        nftWithdrawnStakes[_nftTokenID].endTime = _endTime;
        nftWithdrawnStakes[_nftTokenID].isAutoPool = _isAutoCompound;
    }

    function transitionOldWithdrawnStake(
        address _user,
        uint256 _stakeID,
        address _from
    ) external onlyAllowedAddress {
        WithdrawnStakeInfoOld memory oldStake = withdrawnStakeMoveInternal(
            _user,
            _stakeID
        );
        stakeManagerV1.utilizeWithdrawnStake(_user, oldStake.amount, _stakeID);
        uint256 nftTokenID = nftManager.mintForWithdrawnStake(
            _user,
            oldStake.amount,
            _from
        );
        nftWithdrawnStakes[nftTokenID].taxReduction = oldStake.taxReduction;
        nftWithdrawnStakes[nftTokenID].endTime = oldStake.endTime;
        nftWithdrawnStakes[nftTokenID].isAutoPool = oldStake.isAutoPool;
    }

    function activeStakeMove(
        address _user,
        uint256 _stakeID
    ) public view returns (StakeInfo memory) {
        StakeManager.StakeInfo memory oldActiveStake = stakeManagerV1
            .getUserActiveStake(_user, _stakeID);
        return
            StakeInfo(
                oldActiveStake.amount,
                oldActiveStake.startTime,
                oldActiveStake.isAutoPool
            );
    }

    function withdrawnStakeMove(
        address _user,
        uint256 _stakeID
    ) public view returns (WithdrawnStakeInfoOld memory) {
        StakeManager.WithdrawnStakeInfo
            memory oldWithdrawnStake = stakeManagerV1.getUserWithdrawnStake(
                _user,
                _stakeID
            );
        return
            WithdrawnStakeInfoOld(
                oldWithdrawnStake.amount,
                oldWithdrawnStake.taxReduction,
                oldWithdrawnStake.endTime,
                oldWithdrawnStake.isAutoPool
            );
    }

    function withdrawnStakeMoveInternal(
        address _user,
        uint256 _stakeID
    ) internal view returns (WithdrawnStakeInfoOld memory) {
        StakeManager.WithdrawnStakeInfo
            memory oldWithdrawnStake = stakeManagerV1.getUserWithdrawnStake(
                _user,
                _stakeID
            );
        return
            WithdrawnStakeInfoOld(
                oldWithdrawnStake.amount,
                oldWithdrawnStake.taxReduction,
                oldWithdrawnStake.endTime,
                oldWithdrawnStake.isAutoPool
            );
    }

    function getUserActiveStakes(
        address _user
    ) public view returns (StakeInfoView[] memory) {
        UserInfoV2 storage user = userInfo[_user];
        uint256 listInit = user.activeStakesCount;
        if (listInit == 0) {
            listInit = getOldActiveStakeCount(_user);
        }
        StakeInfoView[] memory stakes = new StakeInfoView[](listInit);
        for (uint256 i = 0; i < listInit; i++) {
            if (user.activeStakes[i].startTime == 0) {
                StakeInfo memory tempInf = activeStakeMove(_user, i);
                stakes[i] = StakeInfoView({
                    stakeID: i,
                    taxReduction: stakeManagerV1.getActiveStakeTaxReduction(
                        _user,
                        i
                    ),
                    amount: tempInf.amount,
                    startTime: tempInf.startTime,
                    isAutoPool: tempInf.isAutoPool
                });
            } else {
                stakes[i] = StakeInfoView({
                    stakeID: i,
                    taxReduction: getActiveStakeTaxReduction(_user, i),
                    amount: user.activeStakes[i].amount,
                    startTime: user.activeStakes[i].startTime,
                    isAutoPool: user.activeStakes[i].isAutoPool
                });
            }
        }
        return stakes;
    }

    function getUserWithdrawnStakes(
        address _user
    ) public view returns (WithdrawnStakeInfoView[] memory) {
        uint256 balance = nftManager.balanceOf(_user);
        WithdrawnStakeInfoView[] memory stakes = new WithdrawnStakeInfoView[](
            balance
        );
        uint256[] memory nftList = new uint256[](balance);
        for (uint256 i = 0; i < balance; i++) {
            nftList[i] = nftManager.tokenOfOwnerByIndex(_user, i);
        }

        for (uint256 i = 0; i < balance; i++) {
            stakes[i] = WithdrawnStakeInfoView({
                nftID: nftList[i],
                currentAmount: nftManager.nftHoldingBalance(nftList[i]),
                potentialAmount: nftManager.nftPotentialBalance(nftList[i]),
                taxReduction: nftWithdrawnStakes[nftList[i]].taxReduction,
                endTime: nftWithdrawnStakes[nftList[i]].endTime,
                isAutoPool: nftWithdrawnStakes[nftList[i]].isAutoPool
            });
        }
        return stakes;
    }

    function getOldActiveStakeCount(
        address _user
    ) internal view returns (uint256) {
        uint256 finalI = 0;
        while (true) {
            if (
                stakeManagerV1.getUserActiveStake(_user, finalI).startTime == 0
            ) {
                break;
            }
            finalI += 100;
        }
        if (finalI != 0) {
            finalI -= 90;
            while (true) {
                if (
                    stakeManagerV1
                        .getUserActiveStake(_user, finalI)
                        .startTime == 0
                ) {
                    break;
                }
                finalI += 10;
            }
            for (uint256 i = finalI - 9; i < finalI; i++) {
                if (
                    stakeManagerV1.getUserActiveStake(_user, i).startTime == 0
                ) {
                    return i;
                }
            }
            return finalI;
        }
        return 0;
    }

    function getActiveStakeTaxReduction(
        address _user,
        uint256 _stakeID
    ) public view returns (uint256) {
        StakeInfo storage activeStake = userInfo[_user].activeStakes[_stakeID];
        uint256 relief = reliefPerDay;
        if (activeStake.isAutoPool) {
            relief = reliefPerDay + reliefPerDayExtra;
        }
        uint256 taxReduction = ((block.timestamp - activeStake.startTime) /
            24 hours) * relief;
        return taxReduction;
    }

    function getWithdrawnStakeTaxReduction(
        uint256 _tokenID
    ) public view returns (uint256) {
        return nftWithdrawnStakes[_tokenID].taxReduction;
    }

    function getUserActiveStake(
        address _user,
        uint256 _stakeID
    ) external view returns (StakeInfo memory) {
        return userInfo[_user].activeStakes[_stakeID];
    }

    function getUserWithdrawnStake(
        uint256 _tokenID
    ) external view returns (WithdrawnStakeInfoView memory) {
        return
            WithdrawnStakeInfoView(
                _tokenID,
                nftManager.nftHoldingBalance(_tokenID),
                nftManager.nftPotentialBalance(_tokenID),
                nftWithdrawnStakes[_tokenID].taxReduction,
                nftWithdrawnStakes[_tokenID].endTime,
                nftWithdrawnStakes[_tokenID].isAutoPool
            );
    }

    function isStakeAutoPool(
        address _user,
        uint256 _stakeID
    ) public view returns (bool) {
        if (userInfo[_user].activeStakes[_stakeID].startTime == 0) {
            return activeStakeMove(_user, _stakeID).isAutoPool;
        } else {
            return userInfo[_user].activeStakes[_stakeID].isAutoPool;
        }
    }

    function changeReliefValues(
        uint256 relief1,
        uint256 relief2
    ) external onlyOwner {
        require(relief1 + relief2 < 1000);
        reliefPerDay = relief1;
        reliefPerDayExtra = relief2;
    }

    function setNftManager(address _nftManager) external onlyOwner {
        nftManager = DogsNftManager(_nftManager);
    }

    function setAllowedAddress(address _address, bool _state) public onlyOwner {
        allowedAddress[_address] = _state;
    }
}
