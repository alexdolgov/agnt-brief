//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "./LpManager.sol";
import "./utils/IBabyDogeRouter.sol";

contract TreasuryFeeManager is AccessControlEnumerable, LpManager{
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    
    address public stablecoin;
    address public treasuryAddress;

    event Unwrapped(
        address unwrapper,
        uint256 transferredToTreasury,
        uint256 gasCost
    );

    event NewStablecoin(address);
    event NewTreasury(address);

    /*
     * @param _router BabyDoge router address
     * @param _minWbnbPerLp Minimum amount of WBNB should be received from unwrapping LP token
     * @param _stablecoin Address of stablecoin that will be bought after unwrapping LP tokens
     * @param _treasuryAddress Address of treasury that will receive stablecoins
     */
    constructor(
        IBabyDogeRouter _router,
        uint64 _minWbnbPerLp,
        address _stablecoin,
        address _treasuryAddress
    ) LpManager(_router, _minWbnbPerLp){
        _setupRole(ADMIN_ROLE, msg.sender);
        _setRoleAdmin(MANAGER_ROLE, ADMIN_ROLE);
        _setRoleAdmin(ADMIN_ROLE, ADMIN_ROLE);

        stablecoin = _stablecoin;
        treasuryAddress = _treasuryAddress;
    }


    /*
     * @notice Swaps LP tokens to WBNB and then to stablecoin which will go to treasury
     * @param lpData LP data: LP token address and paths to unwrap
     * @return amountBnbMin Minimum amount of BNB to receive for unwrapping LP tokens
     * @return amountStablesMin Minimum amount of stablecoins to get for WBNB
     * @return gasUsedPerLp Amount of gas user for unwrapping lp token
     * @return amountOut Amount of stablecoins received after unwrapping all lp tokens
     * @return gasCost Amount of WBNB that were paid for gas
     */
    function unwrapTokens(
        LpData[] calldata lpData,
        uint256 amountStablesMin
    )
        external
        onlyRole(MANAGER_ROLE)
        returns(
            uint256[] memory gasUsedPerLp,
            uint256 amountOut,
            uint256 gasCost
        )
    {
        uint256 amountWbnbReceived = 0;
        (gasUsedPerLp, amountWbnbReceived, gasCost) = _swapToWbnb(lpData);

        // swap to stablecoins
        address[] memory path = new address[](2);
        path[0] = WETH;
        path[1] = stablecoin;
        uint256[] memory amounts = router.swapExactTokensForTokens(
            amountWbnbReceived,
            amountStablesMin,
            path,
            treasuryAddress,
            block.timestamp + 1200
        );
        amountOut = amounts[1];

        emit Unwrapped(msg.sender, amountOut, gasCost);
    }


    /*
     * @notice Sets different stablecoin address
     * @param _stablecoin New stablecoin address
     */
    function setStableCoin(address _stablecoin)
        external
        onlyRole(ADMIN_ROLE)
    {
        require(stablecoin != _stablecoin, "Already set");
        require(_stablecoin != address(0));
        stablecoin = _stablecoin;
        emit NewStablecoin(_stablecoin);
    }


    /*
     * @notice Sets different treasury address
     * @param _treasuryAddress New treasury address
     */
    function setTreasuryAddress(address _treasuryAddress)
        external
        onlyRole(ADMIN_ROLE)
    {
        require(treasuryAddress != _treasuryAddress, "Already set");
        require(_treasuryAddress != address(0));
        treasuryAddress = _treasuryAddress;
        emit NewTreasury(_treasuryAddress);
    }


    /*
     * @notice Sets minimum WBNB to be received per LP token unwrap
     * @param _minWbnbPerLp Minimum WBNB to be received per LP token unwrap
     */
    function setMinWbnbPerLp(uint64 _minWbnbPerLp)
        external
        onlyRole(ADMIN_ROLE)
    {
        _setMinWbnbPerLp(_minWbnbPerLp);
    }


    /*
     * @notice Sets additional amount of gas to refund per unwrap
     * @param _gasRefund Additional amount of gas to refund per unwrap
     * @dev To use in case of increased gas cost
     */
    function setGasRefund(uint32 _gasRefund)
        external
        onlyRole(ADMIN_ROLE)
    {
        _setGasRefund(_gasRefund);
    }


    /*
     * @notice Recovers ERC20 tokens
     * @param token ERC20 token address
     * @param account Receiver of tokens
     * @param amount Amount of tokens to recover
     */
    function recoverERC20(
        address token,
        address account,
        uint256 amount
    ) external onlyRole(ADMIN_ROLE) {
        _recoverERC20(token, account, amount);
    }


    /*
     * @notice Recovers BNB
     * @param account Receiver of BNB
     * @param amount Amount of BNB to recover
     */
    function recoverBNB(
        address account,
        uint256 amount
    ) external onlyRole(ADMIN_ROLE) {
        _recoverBNB(account, amount);
    }


    /*
     * @notice Returns all members of specific role
     * @param role Role hash
     * @return List of role members
     */
    function getRoleMembers(bytes32 role) external view returns (address[] memory) {
        uint256 membersCount = getRoleMemberCount(role);
        address[] memory members = new address[](membersCount);

        for (uint i = 0; i < membersCount; i++) {
            members[i] = getRoleMember(role, i);
        }

        return members;
    }
}
