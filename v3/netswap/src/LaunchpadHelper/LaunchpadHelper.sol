
// File: contracts/interfaces/IPadFactory.sol



pragma solidity 0.8.6;

interface IPadFactory {
    struct Multiplier {
        uint256 multiplier10;
        uint256 multiplier15;
        uint256 multiplier20;
        uint256 multiplier25;
        uint256 multiplier50;
        uint256 multiplier100;
    }
    function wNETT() external view returns (address);
    function USDPerWNETT() external view returns (uint256);
    function feeCollector() external view returns (address);
    function multiplierFeeRate(uint256) external view returns (uint256);
    function multiplier() external view returns (Multiplier memory);
    function numModels() external view returns (uint256 total, uint256 primary, uint256 unlimited);
    function allUnlimitedModels(uint256 index) external view returns (address);
}
// File: contracts/interfaces/IPrimary.sol


pragma solidity ^0.8.6;

interface IPrimary {
    function initialize(
        address _issuer,
        address _issuedToken,
        address _paymentToken,
        uint256 _issuedTokenAmount,
        uint256 _price,
        uint256 _maxAllocPerUser,
        uint256 _depositStartTime,
        uint256 _depositDuration,
        uint256 _launchTime,
        uint256 _decimals
    ) external;
}
// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v4.5.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// File: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol


// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.0;


/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// File: contracts/interfaces/IUnlimited.sol


pragma solidity ^0.8.6;


interface IUnlimited {
    struct UserInfo {
        /// @notice How much sale token user will get
        uint256 allocation;
        /// @notice How much payment token user has deposited for this launch event
        uint256 balance;
        /// @notice How much refunds user will get under situation of over-subscription
        uint256 refunds;
        /// @notice If user claimed refunds
        bool hasClaimedRefunds;
    }

    function issuedToken() external view returns (IERC20Metadata);

    function paymentToken() external view returns (IERC20Metadata);

    function depositStart() external view returns (uint256);

    function DEPOSIT_DURATION() external view returns (uint256);

    function launchTime() external view returns (uint256);

    function price() external view returns (uint256);

    function USDPerWNETT() external view returns (uint256);

    function issuedTokenAmount() external view returns (uint256);

    function targetRaised() external view returns (uint256);

    function issuedTokenDecimals() external view returns (uint256);

    function userCount() external view returns (uint256);

    function paymentTokenReserve() external view returns (uint256);

    function getUserInfo(address _user) external view returns (UserInfo memory);

    function minDeposit() external view returns (uint256);

    function getUserAllocation(address _user) external view returns (uint256);

    function getUserRefunds(address _user) external view returns (uint256);

    function initialize(
        address _issuer,
        address _issuedToken,
        address _paymentToken,
        uint256 _issuedTokenAmount,
        uint256 _price,
        uint256 _depositStartTime,
        uint256 _depositDuration,
        uint256 _launchTime,
        uint256 _decimals,
        uint256 _minDeposit
    ) external;
}
// File: contracts/LaunchpadHelper.sol


pragma solidity ^0.8.6;




/// @title Helper for launchpad v2
/// @author Netswap
/// @notice Helper contract to fetch launchpad v2 data
contract LaunchpadHelper {
    struct UnlimitedData {
        address issuedToken;
        address paymentToken;
        address id;
        uint256 depositStart;
        uint256 DEPOSIT_DURATION;
        uint256 launchTime;
        uint256 price;
        uint256 USDPerWNETT;
        uint256 issuedTokenAmount;
        uint256 targetRaised;
        uint256 issuedTokenDecimals;
        uint256 paymentTokenReserve;
        uint256 userCount;
        uint256 minDeposit;
        IUnlimited.UserInfo userInfo;
    }

    IPadFactory public padFactory;
    address public owner;

    /// @notice Create a new instance with required parameters
    /// @param _padFactory Address of the PadFactory
    constructor(address _padFactory) {
        padFactory = IPadFactory(_padFactory);
        owner = msg.sender;
    }

    /// @notice Get all unlimited launch event data
    /// @param _offset Index to start at when looking up launch events
    /// @param _limit Maximum number of launch event data to return
    /// @return Array of all unlimited launch event data
    function getAllUnlimitedEvents(uint256 _offset, uint256 _limit)
        external
        view
        returns (UnlimitedData[] memory)
    {
        UnlimitedData[] memory unlimitedData;
        (,,uint256 unlimitedNum) = padFactory.numModels();

        if (_offset >= unlimitedNum || _limit == 0) {
            return unlimitedData;
        }

        uint256 end = _offset + _limit > unlimitedNum
            ? unlimitedNum
            : _offset + _limit;
        unlimitedData = new UnlimitedData[](end - _offset);

        for (uint256 i = _offset; i < end; i++) {
            address unlimitedAddr = padFactory.allUnlimitedModels(i);
            IUnlimited unlimited = IUnlimited(unlimitedAddr);
            unlimitedData[i] = getUnlimitedEventData(unlimited);
        }
        return unlimitedData;
    }

    /// @notice Get all unlimited launch event datas with a given `_user`
    /// @param _offset Index to start at when looking up unlimited launch events
    /// @param _limit Maximum number of unlimited launch event datas to return
    /// @param _user User to lookup
    /// @return Array of all unlimited launch event datas with user info
    function getAllUnlimitedEventsWithUser(
        uint256 _offset,
        uint256 _limit,
        address _user
    ) external view returns (UnlimitedData[] memory) {
        UnlimitedData[] memory unlimitedData;
        (,,uint256 unlimitedNum) = padFactory.numModels();

        if (_offset >= unlimitedNum || _limit == 0) {
            return unlimitedData;
        }

        uint256 end = _offset + _limit > unlimitedNum
            ? unlimitedNum
            : _offset + _limit;
        unlimitedData = new UnlimitedData[](end - _offset);

        for (uint256 i = _offset; i < end; i++) {
            address unlimitedEventAddr = padFactory.allUnlimitedModels(i);
            IUnlimited unlimited = IUnlimited(unlimitedEventAddr);
            unlimitedData[i] = getUserUnlimitedEventData(unlimited, _user);
        }

        return unlimitedData;
    }

    function getUserUnlimitedEventData(IUnlimited _unlimited, address _user) 
        public 
        view 
        returns (UnlimitedData memory)
    {
        UnlimitedData memory unlimitedEventData = getUnlimitedEventData(
            _unlimited
        );
        unlimitedEventData.userInfo = _unlimited.getUserInfo(_user);
        unlimitedEventData.userInfo.allocation = _unlimited.getUserAllocation(_user);
        unlimitedEventData.userInfo.refunds = _unlimited.getUserRefunds(_user);
        return unlimitedEventData;
    }

    function getUnlimitedEventData(IUnlimited _unlimited) 
        public 
        view 
        returns (UnlimitedData memory) {
            uint256 paymentTokenReserve = _unlimited.paymentTokenReserve();
            IERC20Metadata issuedToken = _unlimited.issuedToken();
            IERC20Metadata paymentToken = _unlimited.paymentToken();

            return UnlimitedData({
               issuedToken: address(issuedToken),
               paymentToken: address(paymentToken),
               id: address(_unlimited),
               depositStart: _unlimited.depositStart(),
               DEPOSIT_DURATION: _unlimited.DEPOSIT_DURATION(),
               launchTime: _unlimited.launchTime(),
               price: _unlimited.price(),
               USDPerWNETT: _unlimited.USDPerWNETT(),
               issuedTokenAmount: _unlimited.issuedTokenAmount(),
               targetRaised: _unlimited.targetRaised(),
               issuedTokenDecimals: _unlimited.issuedTokenDecimals(),
               paymentTokenReserve: paymentTokenReserve,
               userCount: _unlimited.userCount(),
               minDeposit: _unlimited.minDeposit(),
               userInfo: IUnlimited.UserInfo({
                    allocation: 0,
                    balance: 0,
                    refunds: 0,
                    hasClaimedRefunds: false
                })
            });
    }

    function setPadFactory(address _newFactory) external {
        require(msg.sender == owner, "not owner");
        padFactory = IPadFactory(_newFactory);
    }

}
