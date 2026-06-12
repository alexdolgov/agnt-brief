//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "./LpManager.sol";
import "./utils/IBabyDogeRouter.sol";

contract BuyBackFeeManager is AccessControlEnumerable, LpManager{
    bytes32 public constant GOVERNANCE_ROLE = keccak256("GOVERNANCE_ROLE");
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");
    address private constant DEAD_WALLET = 0x000000000000000000000000000000000000dEaD;

    address public buyBackToken;

    event Unwrapped(
        address unwrapper,
        uint256 receivedBNB,
        uint256 gasCost
    );
    event NewBuyBackToken(address);
    event Burned(uint256 amount);


    /*
     * @param _router BabyDoge router address
     * @param _minWbnbPerLp Minimum amount of WBNB should be received from unwrapping LP token
     * @param _buyBackToken Address of buyback tokens that will be burned
     */
    constructor(
        IBabyDogeRouter _router,
        uint64 _minWbnbPerLp,
        address _buyBackToken
    ) LpManager(_router, _minWbnbPerLp){
        _setupRole(GOVERNANCE_ROLE, msg.sender);
        _setRoleAdmin(MANAGER_ROLE, GOVERNANCE_ROLE);
        _setRoleAdmin(GOVERNANCE_ROLE, GOVERNANCE_ROLE);

        buyBackToken = _buyBackToken;
    }


    /*
     * @notice Swaps LP tokens to WBNB
     * @param lpData LP data: LP token address and paths to unwrap
     * @return amountBnbMin Minimum amount of BNB to receive for unwrapping LP tokens
     * @return amountBuyBackMin Minimum amount of BuyBack tokens to get for WBNB
     * @return gasUsedPerLp Amount of gas user for unwrapping lp token
     * @return amountOut Amount of BuyBack tokens received after unwrapping all lp tokens
     * @return gasCost Amount of WBNB that were paid for gas
     */
    function unwrapTokens(
        LpData[] calldata lpData,
        uint256 amountBnbMin
    )
        external
        onlyRole(MANAGER_ROLE)
        returns(
            uint256[] memory gasUsedPerLp,
            uint256 amountOut,
            uint256 gasCost
        )
    {
        (gasUsedPerLp, amountOut, gasCost) = _swapToWbnb(lpData);
        require(amountOut >= amountBnbMin, "Below min BNB");

        emit Unwrapped(msg.sender, amountOut, gasCost);
    }


    /*
     * @notice Swaps WBNB to BuyBack token and sends them to burn wallet
     * @param amountOutMin Minimum amount of buyBack tokens to be burned
     */
    function swapToBuyBackAndBurn(
        uint256 amountOutMin
    ) external returns(uint256 burned) {
        require(
            hasRole(MANAGER_ROLE, msg.sender)
            || msg.sender == address(this),    // permission is required for correct work of recoverERC20
            "Not allowed to burn"
        );
        uint256 wbnbBalance = IERC20(WETH).balanceOf(address(this));

        // gas saving
        address _buyBackToken = buyBackToken;

        uint256 initialBuyBackBalance = IERC20(_buyBackToken).balanceOf(DEAD_WALLET);

        // swap to BuyBack tokens
        address[] memory path = new address[](2);
        path[0] = WETH;
        path[1] = _buyBackToken;
        router.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            wbnbBalance,
            amountOutMin,
            path,
            DEAD_WALLET,
            block.timestamp + 1200
        );

        burned = IERC20(_buyBackToken).balanceOf(DEAD_WALLET) - initialBuyBackBalance;

        emit Burned(burned);
    }


    /*
     * @notice Sets different BuyBack token address
     * @param _buyBackToken New BuyBack token address
     */
    function setBuyBackToken(
        address _buyBackToken
    )
        external
        onlyRole(GOVERNANCE_ROLE)
    {
        require(buyBackToken != _buyBackToken, "Already set");
        require(_buyBackToken != address(0));
        buyBackToken = _buyBackToken;

        emit NewBuyBackToken(_buyBackToken);
    }


    /*
     * @notice Sets minimum WBNB to be received per LP token unwrap
     * @param _minWbnbPerLp Minimum WBNB to be received per LP token unwrap
     */
    function setMinWbnbPerLp(uint64 _minWbnbPerLp)
        external
        onlyRole(GOVERNANCE_ROLE)
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
    onlyRole(GOVERNANCE_ROLE)
    {
        _setGasRefund(_gasRefund);
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


    /*
     * @notice Recovers ERC20 tokens
     * @param token ERC20 token address
     * @param account Receiver of tokens
     * @param amount Amount of tokens to recover
     * @dev Can't recover LP tokens
     */
    function recoverERC20(
        address token,
        address account,
        uint256 amount
    ) external onlyRole(GOVERNANCE_ROLE) {
        try IBabyDogePair(token).factory() returns(address factoryAddress) {
            if(factoryAddress == router.factory()) {
                revert("Can't recover LP tokens");
            }
        } catch(bytes memory) {}

        if(token == WETH) {
            // Can't recover WETH if buyback tokens can be burned
            try IBuyBackFeeManager(address(this)).swapToBuyBackAndBurn(0) returns(uint256) {
                revert("Please burn BuyBack");
            } catch(bytes memory) {}
        }

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
    ) external onlyRole(GOVERNANCE_ROLE) {
        _recoverBNB(account, amount);
    }
}

interface IBuyBackFeeManager {
    function swapToBuyBackAndBurn(uint256 amountOutMin) external returns(uint256 burned);
}
