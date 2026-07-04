// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/math/Math.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./library/Whitelist.sol";
import "./interfaces/IERC721.sol";

interface IFinsToken {
    function mint(address _to, uint256 _amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
}

interface NFTController {
    function getBoostRate(address token, uint tokenId) external view returns (uint boostRate);
    function isWhitelistedNFT(address token) external view returns (bool);
}

contract MasterOcean is Ownable, ReentrancyGuard, Whitelist {
    using SafeMath for uint256;
    using SafeBEP20 for IBEP20;

    // Bonus muliplier for early fins makers.
    uint256 public constant BONUS_MULTIPLIER = 1;

    // Info of each user.
    struct UserInfo {
        uint256 amount;         // How many LP tokens the user has provided.
        uint256 rewardDebt;     // Reward debt. See explanation below.
        //
        // We do some fancy math here. Basically, any point in time, the amount of FINS
        // entitled to a user but is pending to be distributed is:
        //
        //   pending reward = (user.amount * pool.accFinsPerShare) - user.rewardDebt
        //
        // Whenever a user deposits or withdraws LP tokens to a pool. Here's what happens:
        //   1. The pool's `accFinsPerShare` (and `lastRewardBlock`) gets updated.
        //   2. User receives the pending reward sent to his/her address.
        //   3. User's `amount` gets updated.
        //   4. User's `rewardDebt` gets updated.
    }

    // Info of each pool.
    struct PoolInfo {
        IBEP20 lpToken;           // Address of LP token contract.
        uint256 allocPoint;       // How many allocation points assigned to this pool. FINS to distribute per block.
        uint256 lastRewardBlock;  // Last block number that FINS distribution occurs.
        uint256 accFinsPerShare;   // Accumulated FINS per share, times 1e18. See below.
        uint16 depositFeeBP;      // Deposit fee in basis points
    }

    struct NFTSlot {
        address slot1;
        uint256 tokenId1;
        address slot2;
        uint256 tokenId2;
        address slot3;
        uint256 tokenId3;
        address slot4;
        uint256 tokenId4;
        address slot5;
        uint256 tokenId5;
    }

    // The FINS TOKEN!
    IFinsToken public fins;
    // FINS tokens created per block.
    uint256 public finsPerBlock;
    // Deposit Fee address
    address public feeAddress;

    // Info of each pool.
    PoolInfo[] public poolInfo;
    // Info of each user that stakes LP tokens.
    mapping(uint256 => mapping(address => UserInfo)) public userInfo;
    // Total allocation points. Must be the sum of all allocation points in all pools.
    uint256 public totalAllocPoint;
    // The block number when FINS mining starts.
    uint256 public startBlock;

    mapping(IBEP20 => bool) public poolExistence;

    mapping(address => mapping(uint256 => NFTSlot)) private _depositedNFT; // user => pid => nft slot;

    bool public whitelistAll;
    NFTController public controller = NFTController(0xc404446f0C5f93D665Cf905fEa7ef0C3b31deb41);
    uint public nftBoostRate = 100;

    event Deposit(address indexed user, uint256 indexed pid, uint256 amount);
    event Withdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event EmergencyWithdraw(address indexed user, uint256 indexed pid, uint256 amount);
    event SetFeeAddress(address indexed user, address indexed newAddress);
    event SetDevAddress(address indexed user, address indexed newAddress);
    event UpdateEmissionRate(address indexed user, uint256 finsPerBlock);
    event UpdateNFTController(address indexed user, address controller);
    event UpdateNFTBoostRate(address indexed user, uint256 controller);

    constructor(
        IFinsToken _fins,
        address _feeAddress,
        uint256 _finsPerBlock,
        uint256 _startBlock
    ) public {
        fins = _fins;
        feeAddress = _feeAddress;
        finsPerBlock = _finsPerBlock;
        startBlock = _startBlock;
        totalAllocPoint = 0;
        whitelistAll = false;
    }

    /* ========== Modifiers ========== */

    modifier nonDuplicated(IBEP20 _lpToken) {
        require(poolExistence[_lpToken] == false, "nonDuplicated: duplicated");
        _;
    }

    modifier nonContract() {
        if (!isWhitelist(msg.sender) && !whitelistAll) {
            require(tx.origin == msg.sender);
        }
        _;
    }

    /* ========== NFT View Functions ========== */

    function getBoost(address _account, uint256 _pid) public view returns (uint256) {
        NFTSlot memory slot = _depositedNFT[_account][_pid];
        uint boost1 = controller.getBoostRate(slot.slot1, slot.tokenId1);
        uint boost2 = controller.getBoostRate(slot.slot2, slot.tokenId2);
        uint boost3 = controller.getBoostRate(slot.slot3, slot.tokenId3);
        uint boost4 = controller.getBoostRate(slot.slot4, slot.tokenId4);
        uint boost5 = controller.getBoostRate(slot.slot5, slot.tokenId5);
        uint boost = boost1 + boost2 + boost3 + boost4 + boost5;
        return Math.max(boost / 5, boost > 0 ? 1 : 0).mul(nftBoostRate).div(100); // boosts from 0% to 10%, if boost > 0, we ensure we boost at least 1%
    }

    // // @dev we need to ensure that tokenId slot is empty too
    function isNFTSlotEmpty(address _account, uint _slot, uint256 _pid) public view returns (bool) {
        NFTSlot memory slot = _depositedNFT[_account][_pid];
        if (_slot == 1) return slot.slot1 == address(0);
        if (_slot == 2) return slot.slot2 == address(0);
        if (_slot == 3) return slot.slot3 == address(0);
        if (_slot == 4) return slot.slot4 == address(0);
        if (_slot == 5) return slot.slot5 == address(0);
        return false;
    }

    function getSlots(address _account, uint256 _pid) public view returns (address, address, address, address, address) {
        NFTSlot memory slot = _depositedNFT[_account][_pid];
        return (slot.slot1, slot.slot2, slot.slot3, slot.slot4, slot.slot5);
    }

    function getTokenIds(address _account, uint256 _pid) public view returns (uint256, uint256, uint256, uint256, uint256) {
        NFTSlot memory slot = _depositedNFT[_account][_pid];
        return (slot.tokenId1, slot.tokenId2, slot.tokenId3, slot.tokenId4, slot.tokenId5);
    }

    /* ========== View Functions ========== */

    function poolLength() external view returns (uint256) {
        return poolInfo.length;
    }

    // Return reward multiplier over the given _from to _to block.
    function getMultiplier(uint256 _from, uint256 _to) public pure returns (uint256) {
        return _to.sub(_from).mul(BONUS_MULTIPLIER);
    }

    // View function to see pending FINS on frontend.
    function pendingFins(uint256 _pid, address _user) external view returns (uint256) {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][_user];
        uint256 accFinsPerShare = pool.accFinsPerShare;
        uint256 lpSupply = pool.lpToken.balanceOf(address(this));
        if (block.number > pool.lastRewardBlock && lpSupply != 0) {
            uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
            uint256 finsReward = multiplier.mul(finsPerBlock).mul(pool.allocPoint).div(totalAllocPoint);
            accFinsPerShare = accFinsPerShare.add(finsReward.mul(1e18).div(lpSupply));
        }
        return user.amount.mul(accFinsPerShare).div(1e18).sub(user.rewardDebt);
    }

    /* ========== Owner Functions ========== */

    // Add a new lp to the pool. Can only be called by the owner.
    function add(uint256 _allocPoint, IBEP20 _lpToken, uint16 _depositFeeBP, bool _withUpdate) public onlyOwner nonDuplicated(_lpToken) {
        require(_depositFeeBP <= 10000, "add: invalid deposit fee basis points");
        if (_withUpdate) {
            massUpdatePools();
        }
        uint256 lastRewardBlock = block.number > startBlock ? block.number : startBlock;
        totalAllocPoint = totalAllocPoint.add(_allocPoint);
        poolExistence[_lpToken] = true;
        poolInfo.push(PoolInfo({
            lpToken : _lpToken,
            allocPoint : _allocPoint,
            lastRewardBlock : lastRewardBlock,
            accFinsPerShare : 0,
            depositFeeBP : _depositFeeBP
        }));
    }

    // Update the given pool's FINS allocation point and deposit fee. Can only be called by the owner.
    function set(uint256 _pid, uint256 _allocPoint, uint16 _depositFeeBP, bool _withUpdate) public onlyOwner {
        require(_depositFeeBP <= 10000, "set: invalid deposit fee basis points");
        if (_withUpdate) {
            massUpdatePools();
        }
        totalAllocPoint = totalAllocPoint.sub(poolInfo[_pid].allocPoint).add(_allocPoint);
        poolInfo[_pid].allocPoint = _allocPoint;
        poolInfo[_pid].depositFeeBP = _depositFeeBP;
    }

    /* ========== NFT External Functions ========== */

    // Depositing of NFTs
    function depositNFT(address _nft, uint256 _tokenId, uint256 _slot, uint256 _pid) public nonContract {
        require(controller.isWhitelistedNFT(_nft), "only approved NFTs");
        require(isNFTSlotEmpty(msg.sender, _slot, _pid), "slot is not empty");
        require(ERC721(_nft).balanceOf(msg.sender) > 0, "user does not have specified NFT");
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount == 0, "not allowed to deposit");
        
        ERC721(_nft).transferFrom(msg.sender, address(this), _tokenId);
        
        NFTSlot memory slot = _depositedNFT[msg.sender][_pid];

        if (_slot == 1) slot.slot1 = _nft;
        else if (_slot == 2) slot.slot2 = _nft;
        else if (_slot == 3) slot.slot3 = _nft;
        else if (_slot == 4) slot.slot4 = _nft;
        else if (_slot == 5) slot.slot5 = _nft;
        
        if (_slot == 1) slot.tokenId1 = _tokenId;
        else if (_slot == 2) slot.tokenId2 = _tokenId;
        else if (_slot == 3) slot.tokenId3 = _tokenId;
        else if (_slot == 4) slot.tokenId4 = _tokenId;
        else if (_slot == 5) slot.tokenId5 = _tokenId;

        _depositedNFT[msg.sender][_pid] = slot;
    }

    // Withdrawing of NFTs
    function withdrawNFT(uint256 _slot, uint256 _pid) public nonContract {
        require(!isNFTSlotEmpty(msg.sender, _slot, _pid), "slot is empty");
        address _nft;
        uint256 _tokenId;
        
        NFTSlot memory slot = _depositedNFT[msg.sender][_pid];

        if (_slot == 1) _nft = slot.slot1;
        else if (_slot == 2) _nft = slot.slot2;
        else if (_slot == 3) _nft = slot.slot3;
        else if (_slot == 4) _nft = slot.slot4;
        else if (_slot == 5) _nft = slot.slot5;
        
        if (_slot == 1) _tokenId = slot.tokenId1;
        else if (_slot == 2) _tokenId = slot.tokenId2;
        else if (_slot == 3) _tokenId = slot.tokenId3;
        else if (_slot == 4) _tokenId = slot.tokenId4;
        else if (_slot == 5) _tokenId = slot.tokenId5;

        if (_slot == 1) slot.slot1 = address(0);
        else if (_slot == 2) slot.slot2 = address(0);
        else if (_slot == 3) slot.slot3 = address(0);
        else if (_slot == 4) slot.slot4 = address(0);
        else if (_slot == 5) slot.slot5 = address(0);
        
        if (_slot == 1) slot.tokenId1 = uint(0);
        else if (_slot == 2) slot.tokenId2 = uint(0);
        else if (_slot == 3) slot.tokenId3 = uint(0);
        else if (_slot == 4) slot.tokenId4 = uint(0);
        else if (_slot == 5) slot.tokenId5 = uint(0);

        _depositedNFT[msg.sender][_pid] = slot;
        
        ERC721(_nft).transferFrom(address(this), msg.sender, _tokenId);
    }

    /* ========== External Functions ========== */

    // Update reward variables for all pools. Be careful of gas spending!
    function massUpdatePools() public {
        uint256 length = poolInfo.length;
        for (uint256 pid = 0; pid < length; ++pid) {
            updatePool(pid);
        }
    }

    // Update reward variables of the given pool to be up-to-date.
    function updatePool(uint256 _pid) public {
        PoolInfo storage pool = poolInfo[_pid];
        if (block.number <= pool.lastRewardBlock) {
            return;
        }
        uint256 lpSupply = pool.lpToken.balanceOf(address(this));
        if (lpSupply == 0 || pool.allocPoint == 0) {
            pool.lastRewardBlock = block.number;
            return;
        }
        uint256 multiplier = getMultiplier(pool.lastRewardBlock, block.number);
        uint256 finsReward = multiplier.mul(finsPerBlock).mul(pool.allocPoint).div(totalAllocPoint);
        fins.mint(address(this), finsReward);

        pool.accFinsPerShare = pool.accFinsPerShare.add(finsReward.mul(1e18).div(lpSupply));
        pool.lastRewardBlock = block.number;
    }

    // Deposit LP tokens to MasterHealer for FINS allocation.
    function deposit(uint256 _pid, uint256 _amount) public nonReentrant nonContract {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        updatePool(_pid);
        if (user.amount > 0) {
            uint256 pending = user.amount.mul(pool.accFinsPerShare).div(1e18).sub(user.rewardDebt);
            if (pending > 0) {
                safeFinsTransfer(msg.sender, pending, _pid);
            }
        }
        if (_amount > 0) {
            pool.lpToken.safeTransferFrom(address(msg.sender), address(this), _amount);
            if (pool.depositFeeBP > 0) {
                uint256 depositFee = _amount.mul(pool.depositFeeBP).div(10000);
                pool.lpToken.safeTransfer(feeAddress, depositFee);
                user.amount = user.amount.add(_amount).sub(depositFee);
            } else {
                user.amount = user.amount.add(_amount);
            }
        }
        user.rewardDebt = user.amount.mul(pool.accFinsPerShare).div(1e18);
        emit Deposit(msg.sender, _pid, _amount);
    }

    // Withdraw LP tokens from MasterHealer.
    function withdraw(uint256 _pid, uint256 _amount) public nonReentrant nonContract {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        require(user.amount >= _amount, "withdraw: not good");
        updatePool(_pid);
        uint256 pending = user.amount.mul(pool.accFinsPerShare).div(1e18).sub(user.rewardDebt);
        if (pending > 0) {
            safeFinsTransfer(msg.sender, pending, _pid);
        }
        if (_amount > 0) {
            user.amount = user.amount.sub(_amount);
            pool.lpToken.safeTransfer(address(msg.sender), _amount);
        }
        user.rewardDebt = user.amount.mul(pool.accFinsPerShare).div(1e18);
        emit Withdraw(msg.sender, _pid, _amount);
    }

    // Withdraw without caring about rewards. EMERGENCY ONLY.
    function emergencyWithdraw(uint256 _pid) public nonReentrant {
        PoolInfo storage pool = poolInfo[_pid];
        UserInfo storage user = userInfo[_pid][msg.sender];
        uint256 amount = user.amount;
        user.amount = 0;
        user.rewardDebt = 0;
        pool.lpToken.safeTransfer(address(msg.sender), amount);
        emit EmergencyWithdraw(msg.sender, _pid, amount);
    }

    // Safe FINS transfer function, just in case if rounding error causes pool to not have enough FINS.
    function safeFinsTransfer(address _to, uint256 _amount, uint256 _pid) internal {
        uint256 boost = 0;
        uint256 finsBal = fins.balanceOf(address(this));
        bool transferSuccess = false;
        if (_amount > finsBal) {
            transferSuccess = fins.transfer(_to, finsBal);
            boost = getBoost(_to, _pid).mul(finsBal).div(100);
        } else {
            transferSuccess = fins.transfer(_to, _amount);
            boost = getBoost(_to, _pid).mul(_amount).div(100);
        }
        require(transferSuccess, "safeFinsTransfer: transfer failed");
        if (boost > 0) fins.mint(_to, boost);
    }

    /* ========== Set Variable Functions ========== */

    function setFeeAddress(address _feeAddress) public {
        require(msg.sender == feeAddress, "setFeeAddress: FORBIDDEN");
        feeAddress = _feeAddress;
        emit SetFeeAddress(msg.sender, _feeAddress);
    }

    function updateEmissionRate(uint256 _finsPerBlock) public onlyOwner {
        massUpdatePools();
        finsPerBlock = _finsPerBlock;
        emit UpdateEmissionRate(msg.sender, _finsPerBlock);
    }

    function setNftController(address _controller) public onlyOwner {
        controller = NFTController(_controller);
        emit UpdateNFTController(msg.sender, _controller);
    }

    function setNftBoostRate(uint256 _rate) public onlyOwner {
        require(_rate > 50 && _rate < 500, "boost must be within range");
        nftBoostRate = _rate;
        emit UpdateNFTBoostRate(msg.sender, _rate);
    }
}