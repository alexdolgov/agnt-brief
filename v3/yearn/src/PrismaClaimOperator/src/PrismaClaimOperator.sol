// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface IProxy {
    function execute(address target, bytes calldata data) external;
}

interface ICurveFeeDistributor {
    function claim(address receiver) external;
    function token() external view returns (address);
}

contract PrismaClaimOperator {
    using SafeERC20 for IERC20;
    address public treasury;
    address public owner;
    ICurveFeeDistributor public immutable feeDistributor;
    IERC20 public immutable crvUSD;
    IProxy public immutable proxy;
    address public immutable prismaFeeReceiver;
    mapping(address => bool) public authorized;

    modifier onlyAuthorized() {
        require(authorized[msg.sender] || msg.sender == owner, "Only authorized");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner");
        _;
    }

    event OwnerSet(address indexed owner);
    event AuthorizedSet(address indexed account, bool authorized);
    event TreasurySet(address indexed treasury);
    event ERC20Recovered(address indexed token, uint256 amount);

    constructor(address _owner, address _treasury, address _feeDistributor, address _proxy, address _prismaFeeReceiver) {
        require(_owner != address(0), "Invalid owner address");
        require(_treasury != address(0), "Invalid treasury address");
        feeDistributor = ICurveFeeDistributor(_feeDistributor);
        proxy = IProxy(_proxy);
        owner = _owner;
        treasury = _treasury;
        prismaFeeReceiver = _prismaFeeReceiver;
        crvUSD = IERC20(feeDistributor.token());
        emit OwnerSet(_owner);
        emit TreasurySet(_treasury);
    }

    /**
     * @notice Claims Curve admin fees from the Prisma voter proxy and sends them to the treasury
     */
    function claim() external onlyAuthorized {
        _claimTo(treasury);
    }

    /**
     * @notice Claims Curve admin fees from the Prisma voter proxy and sends them to the specified receiver
     * @dev Requires this contract has Prisma Core execute permissions on the proxy
     * @param _receiver The address to send the tokens to
     */
    function claimTo(address _receiver) external onlyOwner {
        _claimTo(_receiver);
    }

    function _claimTo(address _receiver) internal {
        require(_receiver != address(0), "Invalid receiver address");
        feeDistributor.claim(address(proxy));
        uint256 balance = crvUSD.balanceOf(address(proxy));
        if (balance == 0) return;
        proxy.execute(
            address(crvUSD), 
            abi.encodeWithSelector(IERC20.transfer.selector, _receiver, balance)
        );
    }

    /**
     * @notice Transfers tokens from the fee distributor to the treasury
     * @dev Requires this contract is an approved spender via the fee distributor
     * @param _token The token to transfer
     */
    function transferFromFeeReceiver(IERC20 _token) external onlyAuthorized {
        _transferFromFeeReceiver(_token, treasury);
    }

    /**
     * @notice Transfers tokens from the fee distributor to the specified receiver
     * @dev Requires this contract is an approved spender via the fee distributor
     * @param _token The token to transfer
     * @param _recipient The address to transfer the tokens to
     */
    function transferFromFeeReceiverTo(IERC20 _token, address _recipient) external onlyOwner returns (uint256) {
        return _transferFromFeeReceiver(_token, _recipient);
    }

    function _transferFromFeeReceiver(IERC20 token, address recipient) internal returns (uint256) {
        require(recipient != address(0), "Invalid recipient address");
        uint256 balance = token.balanceOf(prismaFeeReceiver);
        if (balance == 0) return 0;
        token.safeTransferFrom(prismaFeeReceiver, recipient, balance);
        return balance;
    }

    /**
     * @notice Sets the owner of the contract
     */
    function setOwner(address _owner) external onlyOwner {
        require(_owner != address(0), "Invalid owner address");
        owner = _owner;
        emit OwnerSet(_owner);
    }

    /**
     * @notice Sets the treasury address
     */
    function setTreasury(address _treasury) external onlyOwner {
        require(_treasury != address(0), "Invalid treasury address");
        treasury = _treasury;
        emit TreasurySet(_treasury);
    }

    /**
     * @notice Sets the authorized status of an account
     */
    function setAuthorized(address _account, bool _authorized) external onlyOwner {
        authorized[_account] = _authorized;
        emit AuthorizedSet(_account, _authorized);
    }

    function recoverERC20(address tokenAddress) external onlyOwner {
        IERC20 token = IERC20(tokenAddress);
        uint256 balance = token.balanceOf(address(this));
        if (balance == 0) return;
        token.safeTransfer(msg.sender, balance);
        emit ERC20Recovered(tokenAddress, balance);
    }
}

