// File: @uniswap\v2-core\contracts\interfaces\IUniswapV2Pair.sol

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

interface IUniswapV2Pair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}

// File: @openzeppelin\contracts\math\SafeMath.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryDiv}.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}

// File: @openzeppelin\contracts\math\SignedSafeMath.sol

pragma solidity >=0.6.0 <0.8.0;

/**
 * @title SignedSafeMath
 * @dev Signed math operations with safety checks that revert on error.
 */
library SignedSafeMath {
    int256 constant private _INT256_MIN = -2**255;

    /**
     * @dev Returns the multiplication of two signed integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(int256 a, int256 b) internal pure returns (int256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        require(!(a == -1 && b == _INT256_MIN), "SignedSafeMath: multiplication overflow");

        int256 c = a * b;
        require(c / a == b, "SignedSafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two signed integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(int256 a, int256 b) internal pure returns (int256) {
        require(b != 0, "SignedSafeMath: division by zero");
        require(!(b == -1 && a == _INT256_MIN), "SignedSafeMath: division overflow");

        int256 c = a / b;

        return c;
    }

    /**
     * @dev Returns the subtraction of two signed integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a - b;
        require((b >= 0 && c <= a) || (b < 0 && c > a), "SignedSafeMath: subtraction overflow");

        return c;
    }

    /**
     * @dev Returns the addition of two signed integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(int256 a, int256 b) internal pure returns (int256) {
        int256 c = a + b;
        require((b >= 0 && c >= a) || (b < 0 && c < a), "SignedSafeMath: addition overflow");

        return c;
    }
}

// File: contracts\GFarmPoolV4.sol


pragma solidity ^0.6.0;

interface TokenInterfacePoolV4{
    function burn(address from, uint256 amount) external;
    function mint(address to, uint256 amount) external;
    function hasRole(bytes32 role, address account) external view returns (bool);
}

interface NftInterfacePoolV4{
    function balanceOf(address owner) external view returns (uint256 balance);
    function transferFrom(address from, address to, uint256 tokenId) external;
}

contract GFarmPoolV4{

    using SafeMath for uint;
    using SignedSafeMath for int;

    // Constants
    uint constant PRECISION = 1e10;
    bytes32 constant MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6;

    // Contracts & Addresses
    mapping(address => bool) public allowedContracts;
    TokenInterfacePoolV4 public token;
    NftInterfacePoolV4[5] public nft;
    IUniswapV2Pair public lp; // GFARM2/DAI
    address public govFund;

    // Variables
    uint public accTokensPerLp;
    uint public maxNftsStaked = 5;
    uint public referralP = 6; // % 2 == 0
    uint public lpBalance;
    uint[5] public boostsP = [0, 0, 50, 75, 100];

    uint public tokenRewards; // 1e18
    uint startBlock = block.number;

    // Mappings
    mapping(address => User) public users;
    mapping(address => mapping(uint => StakedNft)) public userNfts;

    // Structs
    struct StakedNft{
        uint nftId;
        uint nftType;
    }
    struct User{
        uint provided;
        address referral;
        uint referralRewardsTotal;
        uint totalBoost;
        uint debt;
        uint stakedNftsCount;
    }

    // Events
    event AddressUpdated(
        string name,
        address value
    );
    event NumberUpdated(
        string name,
        uint value,
        uint decimals
    );

    constructor(address _gov, address _trading, NftInterfacePoolV4[5] memory _nft) public{
        require(_gov != address(0));
        require(_trading != address(0));
        require(address(_nft[0]) != address(0));
        require(address(_nft[1]) != address(0));
        require(address(_nft[2]) != address(0));
        require(address(_nft[3]) != address(0));
        require(address(_nft[4]) != address(0));
        govFund = _gov;
        allowedContracts[_trading] = true;
        nft = _nft;
    }

    // GOV => UPDATE VARIABLES & MANAGE PAIRS

    // 0. Modifiers
    modifier onlyGov(){
        require(msg.sender == govFund, "GOV");
        _;
    }

    // Set addresses
    function setGovFund(address _gov) external onlyGov{
        require(_gov != address(0));
        govFund = _gov;
        emit AddressUpdated("gov", _gov);
    }
    function setToken(address _token) external onlyGov{
        require(token == TokenInterfacePoolV4(0), "TOKEN_SET");
        token = TokenInterfacePoolV4(_token);
        emit AddressUpdated("token", _token);
    }
    function setLp(address _lp) external onlyGov{
        require(lp == IUniswapV2Pair(0), "LP_SET");
        lp = IUniswapV2Pair(_lp);
        emit AddressUpdated("lp", _lp);
    }
    function addAllowedContract(address c) external onlyGov{
        require(c != address(0), "ADDRESS_0");
        allowedContracts[c] = true;
        emit AddressUpdated("contractAllowed", c);
    }
    function removeAllowedContract(address c) external onlyGov{
        require(c != address(0), "ADDRESS_0");
        allowedContracts[c] = false;
        emit AddressUpdated("contractNotAllowed", c);
    }
    function setBoostsP(uint _gold, uint _plat, uint _dia) external onlyGov{
        boostsP = [0, 0, _gold, _plat, _dia];
        emit NumberUpdated("boostP3", _gold, 0);
        emit NumberUpdated("boostP4", _plat, 0);
        emit NumberUpdated("boostP5", _dia, 0);
    }
    function setMaxNftsStaked(uint _maxNftsStaked) external onlyGov{
        maxNftsStaked = _maxNftsStaked;
        emit NumberUpdated("maxNftsStaked", _maxNftsStaked, 0);
    }
    function setReferralP(uint _referralP) external onlyGov{
        require(_referralP % 2 == 0, "NOT_EVEN");
        referralP = _referralP;
        emit NumberUpdated("referralP", _referralP, 0);
    }

    // USEFUL FUNCTIONS

    // Get reserves LP
    function reservesLp() private view returns(uint, uint){
        (uint112 reserves0, uint112 reserves1, ) = lp.getReserves();
        if(lp.token0() == address(token)){
            return (reserves0, reserves1);
        }else{
            return (reserves1, reserves0);
        }
    }

    // Get Token price in USD
    function tokenPriceUsd() private view returns(uint){
        (uint reserveToken, uint reserveUsd) = reservesLp();
        return reserveUsd.mul(PRECISION).div(reserveToken);
    }

    // Called by Gains.farm ecosystem allowed contracts (trading, casino, etc.)
    function increaseAccTokensPerLp(uint _amount) external{
        require(allowedContracts[msg.sender] && token.hasRole(MINTER_ROLE, msg.sender), "ONLY_ALLOWED_CONTRACTS");
        if(lpBalance > 0){
            accTokensPerLp = accTokensPerLp.add(_amount.mul(1e18).div(lpBalance));
        }
    }

    function setBoosts(address a) private{
        User storage u = users[a];
        u.totalBoost = 0;
        for(uint i = 0; i < u.stakedNftsCount; i++){
            StakedNft storage stakedNft = userNfts[a][i];

            // If nft is still staked
            if(stakedNft.nftType != 0){
                u.totalBoost = u.totalBoost.add(
                    u.provided.mul(boostsP[stakedNft.nftType-1]).div(100)
                );
            }
        }
        u.debt = u.provided.add(u.totalBoost).mul(accTokensPerLp).div(1e18);
    }

    function pendingReward() view public returns(uint){
        User memory u = users[msg.sender];
        return u.provided.add(u.totalBoost).mul(accTokensPerLp).div(1e18).sub(u.debt);
    }

    function harvestPending(address a) private{
        User storage u = users[a];

        uint pending = pendingReward();

        if(pending == 0){ return; }

        if(u.referral == address(0)){
            uint referralReward = pending.mul(referralP).div(100);
            token.mint(a, pending.sub(referralReward));
            tokenRewards = tokenRewards.add(pending).sub(referralReward);
        }else{
            uint referralReward = pending.mul(referralP.div(2)).div(100);
            uint userReward = pending.sub(referralReward);

            token.mint(a, userReward);
            token.mint(u.referral, referralReward);

            User storage referralUser = users[u.referral];
            referralUser.referralRewardsTotal = referralUser.referralRewardsTotal.add(referralReward);
            tokenRewards = tokenRewards.add(pending);
        }
    }

    function harvest() external{
        // 1. Harvest
        harvestPending(msg.sender);

        // 2. Update debt
        User storage u = users[msg.sender];
        u.debt = u.provided.add(u.totalBoost).mul(accTokensPerLp).div(1e18);
    }

    function stake(uint amount, address referral) external{
        User storage u = users[msg.sender];
        
        // 1. Transfer the LPs to the contract
        lp.transferFrom(msg.sender, address(this), amount);

        // 2. Reset lp balance
        lpBalance = lpBalance.sub(u.provided).sub(u.totalBoost);

        // 3. Harvest pending rewards
        harvestPending(msg.sender);

        // 4. Set user provided
        u.provided = u.provided.add(amount);

        // 5. Set boosts and debt
        setBoosts(msg.sender);

        // 6. Update lp balance
        lpBalance = lpBalance.add(u.provided).add(u.totalBoost);

        // 7. Set referral
        if(u.referral == address(0) && referral != address(0)
            && referral != msg.sender){
            u.referral = referral;
        }
    }

    // nft type: 1, 2, 3, 4, 5
    function stakeNft(uint nftType, uint nftId) external{
        User storage u = users[msg.sender];

        // 0. If didn't already stake NFT + nft type is either platinum or diamond
        require(u.stakedNftsCount < maxNftsStaked, "MAX_NFTS_ALREADY_STAKED");
        require(nftType >= 3 && nftType <= 5, "WRONG_NFT_TYPE");

        // 1. Transfer the NFT to the contract
        require(nft[nftType-1].balanceOf(msg.sender) >= 1, "NOT_NFT_OWNER");
        nft[nftType-1].transferFrom(msg.sender, address(this), nftId);

        // 2. Reset lp balance
        lpBalance = lpBalance.sub(u.provided).sub(u.totalBoost);

        // 3. Harvest pending rewards
        harvestPending(msg.sender);

        // 4. Store NFT info
        StakedNft storage stakedNft = userNfts[msg.sender][u.stakedNftsCount];
        stakedNft.nftType = nftType;
        stakedNft.nftId = nftId;
        u.stakedNftsCount = u.stakedNftsCount.add(1);

        // 5. Set user boosts & debt
        setBoosts(msg.sender);

        // 6. Update lp balance
        lpBalance = lpBalance.add(u.provided).add(u.totalBoost);
    }

    function unstakeNft(uint nftIndex) external{
        User storage u = users[msg.sender];
        StakedNft storage stakedNft = userNfts[msg.sender][nftIndex];

        // 1. Transfer the NFT to the user
        nft[stakedNft.nftType-1].transferFrom(address(this), msg.sender, stakedNft.nftId);

        // 2. Reset lp balance
        lpBalance = lpBalance.sub(u.provided).sub(u.totalBoost);

        // 3. Harvest pending rewards
        harvestPending(msg.sender);

        // 4. Remove NFT from storage => replace by last one and remove last one
        userNfts[msg.sender][nftIndex] = userNfts[msg.sender][u.stakedNftsCount-1];
        delete userNfts[msg.sender][u.stakedNftsCount-1];
        u.stakedNftsCount = u.stakedNftsCount.sub(1);

        // 5. Set user boosts & debt
        setBoosts(msg.sender);

        // 6. Update lp balance
        lpBalance = lpBalance.add(u.provided).add(u.totalBoost);
    }

    function unstake(uint amount) external{
        // 1. Verify he doesn't unstake more than provided
        User storage u = users[msg.sender];
        require(amount <= u.provided, "AMOUNT_TOO_BIG");

        // 2. Reset lp balance
        lpBalance = lpBalance.sub(u.provided).sub(u.totalBoost);

        // 3. Harvest pending rewards
        harvestPending(msg.sender);

        // 4. Set user provided
        u.provided -= amount;

        // 5. Set boosts and debt
        setBoosts(msg.sender);

        // 6. Update lp balance
        lpBalance = lpBalance.add(u.provided).add(u.totalBoost);

        // 7. Transfer the LPs to the address
        lp.transfer(msg.sender, amount);
    }

    // 1e5 precision
    function tvl() public view returns(uint){
        if(lp.totalSupply() == 0){ return 0; }

        (, uint reserveUsd) = reservesLp();
        uint lpPriceUsd = reserveUsd.mul(1e5).mul(2).div(lp.totalSupply());

        return lp.balanceOf(address(this)).mul(lpPriceUsd).div(1e18);
    }
    // 1e5 precision
    function tvlWithBoosts() public view returns(uint){
        if(lp.totalSupply() == 0){ return 0; }

        (, uint reserveUsd) = reservesLp();
        uint lpPriceUsd = reserveUsd.mul(1e5).mul(2).div(lp.totalSupply());

        return lpBalance.mul(lpPriceUsd).div(1e18);
    }
    // 1e5 precision
    function apy() external view returns(uint){
        if(tvl() == 0 || block.number == startBlock){ return 0; }
        return  tokenRewards.mul(tokenPriceUsd())
                .mul(36500).mul(43200)
                .div(tvlWithBoosts()).div(block.number.sub(startBlock)).div(1e13);
    }
}