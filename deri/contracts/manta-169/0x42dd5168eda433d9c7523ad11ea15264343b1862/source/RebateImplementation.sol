// Sources flattened with hardhat v2.19.4 https://hardhat.org

// SPDX-License-Identifier: MIT

// File contracts/ReferralFee/RebateCalculator.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

library RebateCalculator {
    uint256 constant UONE = 1e18;

    function calculateTierRebate(
        uint256 startFee,
        uint256 startRate,
        uint256 endFee,
        uint256 endRate,
        uint256 fee
    ) internal pure returns (uint256 currentRate, uint256 tierRebate) {
        require(fee >= startFee && fee < endFee, "wrong tier");
        currentRate =
            ((fee - startFee) * (endRate - startRate)) /
            (endFee - startFee) +
            startRate;
        tierRebate =
            (((currentRate + startRate) / 2) * (fee - startFee)) /
            UONE;
    }

    // Fee Ranges and Rates:
    // Fee range >= 10000: rate = 40%
    // Fee range >= 6000 and < 10000: rate = [32%, 40%]
    // Fee range >= 4000 and < 6000: rate = [28%, 32%]
    // Fee range >= 2000 and < 4000: rate = [24%, 28%]
    // Fee range >= 1000 and < 2000: rate = [20%, 24%]
    // Fee range >= 10 and < 1000: rate = 20%
    function calculateTotalRebate(
        uint256 fee
    ) internal pure returns (uint256 currentRate, uint256 totalRebate) {
        uint256 tierRebate;
        if (fee >= 10000 * UONE) {
            currentRate = 400000000000000000;
            totalRebate =
                ((fee - 10000 * UONE) * currentRate) /
                UONE +
                2980 *
                UONE;
        } else if (fee >= 6000 * UONE && fee < 10000 * UONE) {
            (currentRate, tierRebate) = calculateTierRebate(
                6000 * UONE,
                320000000000000000,
                10000 * UONE,
                400000000000000000,
                fee
            );
            totalRebate = tierRebate + 1540 * UONE;
        } else if (fee >= 4000 * UONE && fee < 6000 * UONE) {
            (currentRate, tierRebate) = calculateTierRebate(
                4000 * UONE,
                280000000000000000,
                6000 * UONE,
                320000000000000000,
                fee
            );
            totalRebate = tierRebate + 940 * UONE;
        } else if (fee >= 2000 * UONE && fee < 4000 * UONE) {
            (currentRate, tierRebate) = calculateTierRebate(
                2000 * UONE,
                240000000000000000,
                4000 * UONE,
                280000000000000000,
                fee
            );
            totalRebate = tierRebate + 420 * UONE;
        } else if (fee >= 1000 * UONE && fee < 2000 * UONE) {
            (currentRate, tierRebate) = calculateTierRebate(
                1000 * UONE,
                200000000000000000,
                2000 * UONE,
                240000000000000000,
                fee
            );
            totalRebate = tierRebate + 200 * UONE;
        } else if (fee >= 10 * UONE && fee < 1000 * UONE) {
            currentRate = 200000000000000000;
            totalRebate = (fee * currentRate) / UONE;
        }
    }

    function calculateTotalBrokerRebate(
        uint256 fee
    )
        internal
        pure
        returns (uint256 currentBrokerRate, uint256 totalBrokerRebate)
    {
        (uint256 currentRate, uint256 totalRebate) = calculateTotalRebate(fee);
        currentBrokerRate = (currentRate * 900000000000000000) / UONE;
        totalBrokerRebate = (totalRebate * 900000000000000000) / UONE;
    }

    function calculateTotalRecruiterRebate(
        uint256 fee
    ) internal pure returns (uint256 currentRecruiterRate, uint256 totalRecruiterRebate) {
        (uint256 currentRate, uint256 totalRebate) = calculateTotalRebate(fee);
        currentRecruiterRate = (currentRate * 100000000000000000) / UONE;
        totalRecruiterRebate = (totalRebate * 100000000000000000) / UONE;
    }
}


// File contracts/utils/Admin.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

abstract contract Admin {

    error OnlyAdmin();

    event NewAdmin(address newAdmin);

    address public admin;

    modifier _onlyAdmin_() {
        if (msg.sender != admin) {
            revert OnlyAdmin();
        }
        _;
    }

    constructor () {
        admin = msg.sender;
        emit NewAdmin(admin);
    }

    /**
     * @notice Set a new admin for the contract.
     * @dev This function allows the current admin to assign a new admin address without performing any explicit verification.
     *      It's the current admin's responsibility to ensure that the 'newAdmin' address is correct and secure.
     * @param newAdmin The address of the new admin.
     */
    function setAdmin(address newAdmin) external _onlyAdmin_ {
        admin = newAdmin;
        emit NewAdmin(newAdmin);
    }

}


// File contracts/ReferralFee/RebateStorage.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
abstract contract RebateStorage is Admin {
    address public implementation;

    bool internal _mutex;

    modifier _reentryLock_() {
        require(!_mutex, "Router: reentry");
        _mutex = true;
        _;
        _mutex = false;
    }

    mapping(bytes32 => address) public brokerAddresses;

    mapping(address => bytes32) public brokerIds;

    mapping(address => BrokerInfo) public brokerInfos;

    mapping(bytes32 => address) public recruiterAddresses;

    mapping(address => bytes32) public recruiterIds;

    mapping(address => RecruiterInfo) public recruiterInfos;

    // trader => broker
    mapping(address => address) public traderReferral;

    // broker => recruiter
    mapping(address => address) public brokerReferral;

    // for recruiter approve
    address public approver;

    address public updater;

    mapping(address => int256) public brokerFees;

    mapping(address => int256) public recruiterFees;

    mapping(address => uint256) public brokerClaimed;

    mapping(address => uint256) public recruiterClaimed;

    uint256 public updatedTimestamp;

    uint256 public totalUnclaimed;

    struct BrokerInfo {
        string code;
        bytes32 id;
        address referral;
    }

    struct RecruiterInfo {
        string code;
        bytes32 id;
    }
}


// File contracts/token/IERC20.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

interface IERC20 {

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    event Transfer(address indexed from, address indexed to, uint256 amount);

    function name() external view returns (string memory);

    function symbol() external view returns (string memory);

    function decimals() external view returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transfer(address to, uint256 amount) external returns (bool);

    function transferFrom(address from, address to, uint256 amount) external returns (bool);

}


// File contracts/utils/INameVersion.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

interface INameVersion {

    function nameId() external view returns (bytes32);

    function versionId() external view returns (bytes32);

}


// File contracts/utils/NameVersion.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
/**
 * @dev Convenience contract for name and version information
 */
abstract contract NameVersion is INameVersion {

    bytes32 public immutable nameId;
    bytes32 public immutable versionId;

    constructor (string memory name, string memory version) {
        nameId = keccak256(abi.encodePacked(name));
        versionId = keccak256(abi.encodePacked(version));
    }

}


// File contracts/utils/Address.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly { size := extcodesize(account) }
        return size > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain`call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{ value: value }(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}


// File contracts/utils/SafeERC20.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {

    using Address for address;

    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(IERC20 token, address spender, uint256 value) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        // solhint-disable-next-line max-line-length
        require((value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender) - value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address.functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) { // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}


// File contracts/utils/SafeMath.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

library SafeMath {

    error UtoIOverflow(uint256);
    error IToUOverflow(int256);
    error AbsOverflow(int256);

    uint256 constant IMAX = 2**255 - 1;
    int256  constant IMIN = -2**255;

    function utoi(uint256 a) internal pure returns (int256) {
        if (a > IMAX) {
            revert UtoIOverflow(a);
        }
        return int256(a);
    }

    function itou(int256 a) internal pure returns (uint256) {
        if (a < 0) {
            revert IToUOverflow(a);
        }
        return uint256(a);
    }

    function abs(int256 a) internal pure returns (int256) {
        if (a == IMIN) {
            revert AbsOverflow(a);
        }
        return a >= 0 ? a : -a;
    }

    function add(uint256 a, int256 b) internal pure returns (uint256) {
        if (b >= 0) {
            return a + uint256(b);
        } else {
            return a - uint256(-b);
        }
    }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function max(int256 a, int256 b) internal pure returns (int256) {
        return a >= b ? a : b;
    }

    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a <= b ? a : b;
    }

    function min(int256 a, int256 b) internal pure returns (int256) {
        return a <= b ? a : b;
    }

    // @notice Rescale a uint256 value from a base of 10^decimals1 to 10^decimals2
    function rescale(uint256 value, uint256 decimals1, uint256 decimals2) internal pure returns (uint256) {
        return decimals1 == decimals2 ? value : value * 10**decimals2 / 10**decimals1;
    }

    // @notice Rescale value with rounding down
    function rescaleDown(uint256 value, uint256 decimals1, uint256 decimals2) internal pure returns (uint256) {
        return rescale(value, decimals1, decimals2);
    }

    // @notice Rescale value with rounding up
    function rescaleUp(uint256 value, uint256 decimals1, uint256 decimals2) internal pure returns (uint256) {
        uint256 rescaled = rescale(value, decimals1, decimals2);
        if (rescale(rescaled, decimals2, decimals1) != value) {
            rescaled += 1;
        }
        return rescaled;
    }

    function rescale(int256 value, uint256 decimals1, uint256 decimals2) internal pure returns (int256) {
        return decimals1 == decimals2 ? value : value * int256(10**decimals2) / int256(10**decimals1);
    }

    function rescaleDown(int256 value, uint256 decimals1, uint256 decimals2) internal pure returns (int256) {
        int256 rescaled = rescale(value, decimals1, decimals2);
        if (value < 0 && rescale(rescaled, decimals2, decimals1) != value) {
            rescaled -= 1;
        }
        return rescaled;
    }

    function rescaleUp(int256 value, uint256 decimals1, uint256 decimals2) internal pure returns (int256) {
        int256 rescaled = rescale(value, decimals1, decimals2);
        if (value > 0 && rescale(rescaled, decimals2, decimals1) != value) {
            rescaled += 1;
        }
        return rescaled;
    }

    // @notice Calculate a + b with overflow allowed
    function addUnchecked(int256 a, int256 b) internal pure returns (int256 c) {
        unchecked { c = a + b; }
    }

    // @notice Calculate a - b with overflow allowed
    function minusUnchecked(int256 a, int256 b) internal pure returns (int256 c) {
        unchecked { c = a - b; }
    }

}


// File contracts/ReferralFee/RebateImplementation.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;
contract RebateImplementation is RebateStorage, NameVersion {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    using SafeMath for int256;

    event NewUpdater(address updater);

    event NewApprover(address approver);

    event TraderRegistered(
        address indexed trader,
        address indexed broker,
        uint256 timestamp
    );

    event BrokerRegistered(
        address indexed broker,
        address indexed recruiter,
        uint256 timestamp
    );

    event RecruiterRegistered(address indexed recruiter, uint256 timestamp);

    event ClaimRebate(address indexed account, uint256 amount);

    using SafeERC20 for IERC20;

    uint256 constant UONE = 1e18;

    address public immutable tokenB0;

    uint256 public immutable decimalsTokenB0;

    address public immutable collector;

    constructor(
        address tokenB0_,
        address collector_
    ) NameVersion("RebateImplementation", "1.0.0") {
        tokenB0 = tokenB0_;
        decimalsTokenB0 = IERC20(tokenB0_).decimals();
        collector = collector_;
    }

    function setUpdater(address newUpdater) external _onlyAdmin_ {
        require(
            newUpdater != updater,
            "RebateImplementation: already current updater"
        );
        updater = newUpdater;
        emit NewUpdater(updater);
    }

    function setApprover(address newApprover) external _onlyAdmin_ {
        require(
            newApprover != approver,
            "RebateImplementation: already current approver"
        );
        approver = newApprover;
        emit NewApprover(approver);
    }

    function registerTrader(string calldata brokerCode) external {
        address account = msg.sender;
        bytes32 brokerId = keccak256(abi.encodePacked(brokerCode));
        address brokerAddress = brokerAddresses[brokerId];

        require(
            brokerAddress != address(0),
            "RebateImplementation: referral not exist"
        );
        require(
            traderReferral[account] == address(0),
            "RebateImplementation: can not reset"
        );

        traderReferral[account] = brokerAddress;
        emit TraderRegistered(account, brokerAddress, block.timestamp);
    }

    function registerBroker(
        string calldata brokerCode,
        string calldata recruiterCode
    ) external {
        address account = msg.sender;
        bytes32 brokerId = keccak256(abi.encodePacked(brokerCode));
        bytes32 recruiterId = keccak256(abi.encodePacked(recruiterCode));
        address recruiter = recruiterAddresses[recruiterId];
        require(
            brokerAddresses[brokerId] == address(0),
            "RebateImplementation: code not available"
        );
        require(
            brokerIds[account] == bytes32(0),
            "RebateImplementation: can not reset"
        );
        require(
            recruiter != address(0),
            "RebateImplementation: referral not exist"
        );

        brokerAddresses[brokerId] = account;
        brokerIds[account] = brokerId;
        brokerInfos[account] = BrokerInfo({
            code: brokerCode,
            id: brokerId,
            referral: recruiter
        });

        emit BrokerRegistered(account, recruiter, block.timestamp);
    }

    function registerRecruiter(
        address recruiter,
        string calldata recruiterCode
    ) external {
        require(msg.sender == approver, "RebateImplementation: only approver");
        bytes32 recruiterId = keccak256(abi.encodePacked(recruiterCode));
        require(
            recruiterAddresses[recruiterId] == address(0),
            "RebateImplementation: code not available"
        );
        require(
            recruiterIds[recruiter] == bytes32(0),
            "RebateImplementation: can not reset"
        );

        recruiterAddresses[recruiterId] = recruiter;
        recruiterIds[recruiter] = recruiterId;
        recruiterInfos[recruiter] = RecruiterInfo({
            code: recruiterCode,
            id: recruiterId
        });

        emit RecruiterRegistered(recruiter, block.timestamp);
    }

    function updateFees(
        address[] calldata brokers,
        int256[] calldata updateBrokerFees,
        address[] calldata recruiters,
        int256[] calldata updateRecruiterFees,
        uint256 timestamp
    ) external {
        require(msg.sender == updater, "RebateImplementation: only updater");
        require(
            timestamp > updatedTimestamp,
            "RebateImplementation: duplicate update"
        );
        require(
            brokers.length == updateBrokerFees.length &&
                recruiters.length == updateRecruiterFees.length,
            "RebateImplementation: invalid input length"
        );
        uint256 totalUnclaimed_ = totalUnclaimed;
        if (brokers.length > 0) {
            for (uint256 i = 0; i < brokers.length; i++) {
                {
                    uint256 fee = brokerFees[brokers[i]].itou();
                    uint256 beforeRebate;
                    uint256 afterRebate;
                    if (fee > 0) {
                        (, beforeRebate) = RebateCalculator.calculateTotalBrokerRebate(
                            fee
                        );
                    }
                    (, afterRebate) = RebateCalculator.calculateTotalBrokerRebate(
                            fee + updateBrokerFees[i].itou()
                        );
                    totalUnclaimed_ += afterRebate - beforeRebate;
                }
                brokerFees[brokers[i]] += updateBrokerFees[i];
                
            }
        }
        if (recruiters.length > 0) {
            for (uint256 i = 0; i < recruiters.length; i++) {
                {
                    uint256 fee = recruiterFees[recruiters[i]].itou();
                    uint256 beforeRebate;
                    uint256 afterRebate;
                    if (fee > 0) {
                        (, beforeRebate) = RebateCalculator.calculateTotalBrokerRebate(
                            fee
                        );
                    }
                    (, afterRebate) = RebateCalculator.calculateTotalBrokerRebate(
                            fee + updateRecruiterFees[i].itou()
                        );
                    totalUnclaimed_ += afterRebate - beforeRebate;
                }
                recruiterFees[recruiters[i]] += updateRecruiterFees[i];
            }
        }
        totalUnclaimed = totalUnclaimed_;
        updatedTimestamp = timestamp;
    }

    function claimBrokerRebate() external _reentryLock_ {
        uint256 fee = brokerFees[msg.sender].itou();
        (, uint256 totalRebate) = RebateCalculator.calculateTotalBrokerRebate(
            fee
        );
        uint256 claimed = brokerClaimed[msg.sender];
        require(
            totalRebate > claimed,
            "RebateImplementation: nothing to claim"
        );
        uint256 unclaimed = totalRebate - claimed;
        brokerClaimed[msg.sender] = totalRebate;
        totalUnclaimed -= unclaimed;
        IProtocolFeeManager(collector).distributeReferralFees(
            msg.sender,
            unclaimed.rescale(18, decimalsTokenB0)
        );
        emit ClaimRebate(msg.sender, unclaimed.rescale(18, decimalsTokenB0));
    }

    function claimRecruiterRebate() external _reentryLock_ {
        uint256 fee = recruiterFees[msg.sender].itou();
        (, uint256 totalRebate) = RebateCalculator
            .calculateTotalRecruiterRebate(fee);
        uint256 claimed = recruiterClaimed[msg.sender];
        require(
            totalRebate > claimed,
            "RebateImplementation: nothing to claim"
        );

        uint256 unclaimed = totalRebate - claimed;
        recruiterClaimed[msg.sender] = totalRebate;
        totalUnclaimed -= unclaimed;

        IProtocolFeeManager(collector).distributeReferralFees(
            msg.sender,
            unclaimed.rescale(18, decimalsTokenB0)
        );
        emit ClaimRebate(msg.sender, unclaimed.rescale(18, decimalsTokenB0));
    }

    function setTotalUnclaimed(uint256 totalUnclaimed_) external {
        require(msg.sender == updater, "RebateImplementation: only updater");
        totalUnclaimed = totalUnclaimed_;
    }

    // HELPERS
    function getBrokerRebate(
        address broker
    )
        external
        view
        returns (uint256 currentBrokerRate, uint256 totalBrokerRebate)
    {
        uint256 fee = brokerFees[broker].itou();
        (currentBrokerRate, totalBrokerRebate) = RebateCalculator
            .calculateTotalBrokerRebate(fee);
    }

    function getRecruiterRebate(
        address recruiter
    )
        external
        view
        returns (uint256 currentRecruiterRate, uint256 totalRecruiterRebate)
    {
        uint256 fee = recruiterFees[recruiter].itou();
        (currentRecruiterRate, totalRecruiterRebate) = RebateCalculator
            .calculateTotalRecruiterRebate(fee);
    }
}

interface IProtocolFeeManager {
    function distributeReferralFees(address recepient, uint256 amount) external;
}
