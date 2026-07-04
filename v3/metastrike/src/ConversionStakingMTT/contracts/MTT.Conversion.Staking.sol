// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract ConversionStakingMTT is Ownable, ReentrancyGuard {
    address public conversionContract;
    address public mttToken;

    uint256[] public periods;
    uint256 public tranches;

    mapping(uint256 => bytes32) public merkleRoots;

    struct StakeData {
        uint256 amount;
        uint256 reward;
        uint256 startTime;
        uint256 period;
        bool isClaimed;
    }

    mapping(address => StakeData[]) public stakers;

    constructor() Ownable(msg.sender) {}

    /* Events */
    event Staked(address wallet, uint256 amount, uint256 period, uint256 index);
    event UnStaked(
        address wallet,
        uint256 amount,
        uint256 reward,
        uint256 index
    );

    event TrancheAdded(
        uint256 tranche,
        bytes32 merkleRoot,
        uint256 totalAmount
    );
    event Claimed(address claimant, uint256 tranche, uint256 balance);
    event TrancheExpired(uint256 tranche);

    /* Modifiers */

    modifier isValidPeriod(uint256 _period) {
        require(periods.length > 0, "periods must be set");
        bool isValid = false;
        for (uint i = 0; i < periods.length; i++) {
            if (periods[i] == _period) {
                isValid = true;
                _;
            }
        }
        require(isValid, "invalid period");
    }

    /* Admin config */

    function setConversionContract(
        address _conversionContract
    ) external onlyOwner {
        conversionContract = _conversionContract;
    }

    function setMttToken(address _mttToken) external onlyOwner {
        mttToken = _mttToken;
    }

    function setPeriods(uint256[] memory _periods) external onlyOwner {
        periods = _periods;
    }

    function withdraw(address _token, uint256 amount) external onlyOwner {
        if (amount == 0) {
            amount = IERC20(_token).balanceOf(address(this));
        }
        IERC20(_token).transfer(owner(), amount);
    }

    function seedNewAllocations(
        bytes32 _merkleRoot,
        uint256 _totalAllocation
    ) public onlyOwner returns (uint256 trancheId) {
        IERC20(mttToken).transferFrom(
            msg.sender,
            address(this),
            _totalAllocation
        );
        trancheId = tranches;
        merkleRoots[trancheId] = _merkleRoot;

        tranches += 1;

        emit TrancheAdded(trancheId, _merkleRoot, _totalAllocation);
    }

    function expireTranche(uint256 _trancheId) public onlyOwner {
        merkleRoots[_trancheId] = bytes32(0);

        emit TrancheExpired(_trancheId);
    }

    /* User methods */

    function stake(
        address _wallet,
        uint256 _amount,
        uint256 _period
    ) external nonReentrant isValidPeriod(_period) {
        require(
            _msgSender() == conversionContract || _msgSender() == owner(),
            "Access forbiden"
        );

        require(_amount > 0, "invalid amount");

        StakeData memory stakeData = StakeData({
            amount: _amount,
            reward: 0,
            startTime: block.timestamp,
            period: _period,
            isClaimed: false
        });

        stakers[_wallet].push(stakeData);

        emit Staked(_wallet, _amount, _period, stakers[_wallet].length - 1);
    }

    function unstake(
        uint256 _trance,
        uint256 _amount,
        uint256 _index,
        bytes32[] memory _merkleProof
    ) external nonReentrant {
        require(_verifyClaim(_trance, msg.sender, _index, _amount, _merkleProof), "invalid proofs");

        require(_index < stakers[msg.sender].length, "invalid index");

        StakeData storage staker = stakers[msg.sender][_index];

        require(
            block.timestamp >= staker.period + staker.startTime,
            "nothing to claim"
        );

        require(staker.isClaimed == false, "already claimed");

        require(_amount >= staker.amount, "claim amount must be larger than staked amount");

        uint256 reward = _amount - staker.amount;

        staker.reward = reward;
        staker.isClaimed = true;

        IERC20(mttToken).transfer(msg.sender, _amount);

        emit UnStaked(msg.sender, staker.amount, reward, _index);
    }

    /* Private methods */

    function _verifyClaim(
        uint256 _tranche,
        address _wallet,
        uint256 _index,
        uint256 _amount,
        bytes32[] memory _merkleProof
    ) private view returns (bool valid) {
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(_wallet, _index, _amount)))
        );
        return MerkleProof.verify(_merkleProof, merkleRoots[_tranche], leaf);
    }

    /* Helpers */

    function isContract(address addr) internal view returns (bool) {
        uint size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }

    function EOAChecker() internal view returns (bool) {
        return _msgSender() == tx.origin;
    }
}
