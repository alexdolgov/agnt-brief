// SPDX-License-Identifier: GPL-3.0
/*                            ******@@@@@@@@@**@*
                        ***@@@@@@@@@@@@@@@@@@@@@@**
                     *@@@@@@**@@@@@@@@@@@@@@@@@*@@@*
                  *@@@@@@@@@@@@@@@@@@@*@@@@@@@@@@@*@**
                 *@@@@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@*
                **@@@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@@@**
                **@@@@@@@@@@@@@@@*@@@@@@@@@@@@@@@@@@@@@@@*
                **@@@@@@@@@@@@@@@@*************************
                **@@@@@@@@***********************************
                 *@@@***********************&@@@@@@@@@@@@@@@****,    ******@@@@*
           *********************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*************
      ***@@@@@@@@@@@@@@@*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@****@@*********
   **@@@@@**********************@@@@*****************#@@@@**********
  *@@******************************************************
 *@************************************
 @*******************************
 *@*************************
   *********************

    /$$$$$                                               /$$$$$$$   /$$$$$$   /$$$$$$
   |__  $$                                              | $$__  $$ /$$__  $$ /$$__  $$
      | $$  /$$$$$$  /$$$$$$$   /$$$$$$   /$$$$$$$      | $$  \ $$| $$  \ $$| $$  \ $$
      | $$ /$$__  $$| $$__  $$ /$$__  $$ /$$_____/      | $$  | $$| $$$$$$$$| $$  | $$
 /$$  | $$| $$  \ $$| $$  \ $$| $$$$$$$$|  $$$$$$       | $$  | $$| $$__  $$| $$  | $$
| $$  | $$| $$  | $$| $$  | $$| $$_____/ \____  $$      | $$  | $$| $$  | $$| $$  | $$
|  $$$$$$/|  $$$$$$/| $$  | $$|  $$$$$$$ /$$$$$$$/      | $$$$$$$/| $$  | $$|  $$$$$$/
 \______/  \______/ |__/  |__/ \_______/|_______/       |_______/ |__/  |__/ \______/
*/
pragma solidity ^0.8.2;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @author Jones DAO
/// @title Jones token sale contract V3
contract JonesTokenSaleV3 is ReentrancyGuard {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    // Jones Token
    IERC20 public jones;

    // Withdrawer
    address public owner;

    // Keeps track of ETH deposited during whitelist phase
    uint256 public weiDepositedWhitelist;

    // Keeps track of ETH deposited
    uint256 public weiDeposited;

    // Time when the token sale starts for whitelisted address
    uint256 public saleWhitelistStart;

    // Time when the token sale starts
    uint256 public saleStart;

    // Time when the token sale closes
    uint256 public saleClose;

    // Max cap on wei raised during whitelist
    uint256 public maxDepositsWhitelist;

    // Max cap on wei raised
    uint256 public maxDeposits = 0;

    // Jones Tokens allocated to this contract
    uint256 public jonesTokensAllocated;

    // Jones Tokens allocated to whitelist
    uint256 public jonesTokensAllocatedWhitelist;

    // Max ETH that can be deposited by whitelisted addresses
    uint256 public maxWhitelistDeposit;

    // Merkleroot of whitelisted addresses
    bytes32 public merkleRoot;

    // Amount each whitelisted user deposited
    mapping(address => uint256) public depositsWhitelist;

    // Amount each user deposited
    mapping(address => uint256) public deposits;

    /// Emits on ETH deposit
    /// @param purchaser contract caller purchasing the tokens on behalf of beneficiary
    /// @param beneficiary will be able to claim tokens after saleClose
    /// @param isWhitelistDeposit is the deposit done via the whitelist function
    /// @param value amount of ETH deposited
    event TokenDeposit(
        address indexed purchaser,
        address indexed beneficiary,
        bool indexed isWhitelistDeposit,
        uint256 value,
        uint256 time
    );

    /// Emits on token claim
    /// @param claimer contract caller claiming on behalf of beneficiary
    /// @param beneficiary receives the tokens they claimed
    /// @param amount token amount beneficiary claimed
    event TokenClaim(
        address indexed claimer,
        address indexed beneficiary,
        uint256 amount
    );

    /// Emits on refund claim
    /// @param claimer contract caller claiming on behalf of beneficiary
    /// @param beneficiary receives the tokens they claimed
    /// @param amount eth amount beneficiary claimed
    event EthRefundClaim(
        address indexed claimer,
        address indexed beneficiary,
        uint256 amount
    );

    /// Emits on eth withdraw
    /// @param amount amount of Eth that was withdrawn
    event WithdrawEth(uint256 amount);

    /// Emits on maxDeposits update
    /// @param amount value of maxDeposits
    event MaxDepositsSet(uint256 amount);

    /// @param _jones Jones
    /// @param _owner withdrawer
    /// @param _saleWhitelistStart time when the token sale starts for whitelisted addresses
    /// @param _saleStart time when the token sale starts
    /// @param _saleClose time when the token sale closes
    /// @param _maxDepositsWhitelist max cap on wei raised during whitelist
    /// @param _jonesTokensAllocated Jones tokens allocated to this contract
    /// @param _maxWhitelistDeposit max deposit that can be done via the whitelist deposit fn
    /// @param _merkleRoot the merkle root of all the whitelisted addresses
    constructor(
        address _jones,
        address _owner,
        uint256 _saleWhitelistStart,
        uint256 _saleStart,
        uint256 _saleClose,
        uint256 _maxDepositsWhitelist,
        uint256 _jonesTokensAllocated,
        uint256 _maxWhitelistDeposit,
        bytes32 _merkleRoot
    ) {
        require(_owner != address(0), "invalid owner address");
        require(_jones != address(0), "invalid token address");
        require(saleWhitelistStart <= _saleStart, "invalid saleWhitelistStart");
        require(_saleStart >= block.timestamp, "invalid saleStart");
        require(_saleClose > _saleStart, "invalid saleClose");
        require(_maxDepositsWhitelist > 0, "invalid maxDepositsWhitelist");
        require(_jonesTokensAllocated > 0, "invalid jonesTokensAllocated");

        jones = IERC20(_jones);
        owner = _owner;
        saleWhitelistStart = _saleWhitelistStart;
        saleStart = _saleStart;
        saleClose = _saleClose;
        maxDepositsWhitelist = _maxDepositsWhitelist;
        jonesTokensAllocated = _jonesTokensAllocated;
        jonesTokensAllocatedWhitelist = jonesTokensAllocated.mul(60).div(100); // 60% of jonesTokensAllocated
        maxWhitelistDeposit = _maxWhitelistDeposit;
        merkleRoot = _merkleRoot;
    }

    /// Checks if a whitelisted address has already deposited using the whitelist deposit fn
    /// @param _user user address
    function isWhitelistedAddressDeposited(address _user)
        public
        view
        returns (bool)
    {
        return depositsWhitelist[_user] > 0;
    }

    /// Deposit fallback
    /// @dev must be equivalent to deposit(address beneficiary)
    receive() external payable isEligibleSender nonReentrant {
        address beneficiary = msg.sender;
        require(beneficiary != address(0), "invalid address");
        require(saleStart <= block.timestamp, "sale hasn't started yet");
        require(block.timestamp <= saleClose, "sale has closed");

        deposits[beneficiary] = deposits[beneficiary].add(msg.value);
        weiDeposited = weiDeposited.add(msg.value);
        emit TokenDeposit(
            msg.sender,
            beneficiary,
            false,
            msg.value,
            block.timestamp
        );
    }

    /// Deposit for whitelisted address
    /// @param index the index of the whitelisted address in the merkle tree
    /// @param beneficiary will be able to claim tokens after saleClose
    /// @param merkleProof the merkle proof
    function depositForWhitelistedAddress(
        uint256 index,
        address beneficiary,
        bytes32[] calldata merkleProof
    ) external payable nonReentrant {
        require(beneficiary != address(0), "invalid address");
        require(beneficiary == msg.sender, "beneficiary not message sender");
        require(msg.value > 0, "must deposit greater than 0");
        require(
            msg.value <= depositableLeftWhitelist(beneficiary),
            "user whitelist allocation used up"
        );
        require(
            (weiDepositedWhitelist + msg.value) <= maxDepositsWhitelist,
            "maximum deposits for whitelist reached"
        );
        require(
            saleWhitelistStart <= block.timestamp,
            "sale hasn't started yet"
        );
        require(block.timestamp <= saleStart, "whitelist sale has closed");

        // Verify the merkle proof.
        uint256 amt = 1;
        bytes32 node = keccak256(abi.encodePacked(index, beneficiary, amt));
        require(
            MerkleProof.verify(merkleProof, merkleRoot, node),
            "invalid proof"
        );

        // Add user deposit to depositsWhitelist
        depositsWhitelist[beneficiary] = depositsWhitelist[beneficiary].add(
            msg.value
        );

        weiDepositedWhitelist = weiDepositedWhitelist.add(msg.value);
        weiDeposited = weiDeposited.add(msg.value);

        emit TokenDeposit(
            msg.sender,
            beneficiary,
            true,
            msg.value,
            block.timestamp
        );
    }

    /// Deposit
    /// @param beneficiary will be able to claim tokens after saleClose
    /// @dev must be equivalent to receive()
    function deposit(address beneficiary)
        public
        payable
        isEligibleSender
        nonReentrant
    {
        require(beneficiary != address(0), "invalid address");
        require(saleStart <= block.timestamp, "sale hasn't started yet");
        require(block.timestamp <= saleClose, "sale has closed");

        deposits[beneficiary] = deposits[beneficiary].add(msg.value);
        weiDeposited = weiDeposited.add(msg.value);
        emit TokenDeposit(
            msg.sender,
            beneficiary,
            false,
            msg.value,
            block.timestamp
        );
    }

    /// Claim
    /// @param beneficiary receives the tokens they claimed
    /// @dev claim calculation must be equivalent to claimAmount(address beneficiary)
    function claim(address beneficiary)
        external
        nonReentrant
        returns (uint256)
    {
        require(maxDeposits != 0, "wait for maxCap announcement");
        require(
            deposits[beneficiary] + depositsWhitelist[beneficiary] > 0,
            "no deposit"
        );
        require(block.timestamp > saleClose, "sale hasn't closed yet");

        // total Jones allocated * user share in the ETH deposited
        uint256 beneficiaryClaim = claimAmountJones(beneficiary);
        uint256 beneficiaryClaimEth = claimAmountEth(beneficiary);
        depositsWhitelist[beneficiary] = 0;
        deposits[beneficiary] = 0;

        jones.safeTransfer(beneficiary, beneficiaryClaim);

        if (beneficiaryClaimEth > 0) {
            payable(beneficiary).transfer(beneficiaryClaimEth);
        }

        emit TokenClaim(msg.sender, beneficiary, beneficiaryClaim);
        emit EthRefundClaim(msg.sender, beneficiary, beneficiaryClaimEth);

        return beneficiaryClaim;
    }

    /// @dev Withdraws eth deposited into the contract. Only owner can call this.
    function withdraw() external {
        require(owner == msg.sender, "caller is not the owner");

        uint256 ethBalance = payable(address(this)).balance;

        payable(msg.sender).transfer(ethBalance);

        emit WithdrawEth(ethBalance);
    }

    function setMaxDeposits(uint256 _maxDeposits) external {
        require(owner == msg.sender, "caller is not the owner");
        require(block.timestamp > saleClose, "sale has not closed yet");
        maxDeposits = _maxDeposits;
        emit MaxDepositsSet(maxDeposits);
    }

    /// View beneficiary's claimable token amount
    /// @param beneficiary address to view claimable token amount of
    function claimAmountJones(address beneficiary)
        public
        view
        returns (uint256)
    {
        // wei deposited during whitelist sale by beneficiary
        uint256 userDepoWl = depositsWhitelist[beneficiary];

        // wei deposited during public sale by beneficiary
        uint256 userDepoPub = deposits[beneficiary];

        if (userDepoPub.add(userDepoWl) == 0) {
            return 0;
        }

        // amount of jones unsold during whitelist sale
        uint256 unsoldWlJones = jonesTokensAllocatedWhitelist
            .mul((maxDepositsWhitelist.sub(weiDepositedWhitelist)))
            .div(maxDepositsWhitelist);

        // amount of jones tokens allocated to whitelist sale
        uint256 jonesForWl = jonesTokensAllocatedWhitelist.sub(unsoldWlJones);

        // amount of jones tokens allocated to public sale
        uint256 jonesForPublic = jonesTokensAllocated.sub(jonesForWl);

        // total wei deposited during the public sale
        uint256 totalDepoPublic = weiDeposited.sub(weiDepositedWhitelist);

        uint256 userClaimableJones = 0;

        if (userDepoWl > 0) {
            userClaimableJones = jonesForWl.mul(userDepoWl).div(
                weiDepositedWhitelist
            );
        }

        if (userDepoPub > 0) {
            userClaimableJones = userClaimableJones.add(
                jonesForPublic.mul(userDepoPub).div(totalDepoPublic)
            );
        }

        return userClaimableJones;
    }

    /// View beneficiary's claimable ETH amount
    /// @param beneficiary address to view claimable ETH amount of
    function claimAmountEth(address beneficiary) public view returns (uint256) {
        // wei deposited during public sale by beneficiary
        uint256 userDepoPub = deposits[beneficiary];

        // if user has not depoisted during the public sale OR the sale did not reach the max deposit cap
        if (userDepoPub == 0 || maxDeposits >= weiDeposited) {
            return 0;
        }

        // ETH raised in eccess
        uint256 eccessEth = weiDeposited.sub(maxDeposits);

        // ETH raised during non whitelisted sale
        uint256 totalDepoPublic = weiDeposited.sub(weiDepositedWhitelist);

        return eccessEth.mul(userDepoPub).div(totalDepoPublic);
    }

    /// View leftover depositable eth for whitelisted user
    /// @param beneficiary user address
    function depositableLeftWhitelist(address beneficiary)
        public
        view
        returns (uint256)
    {
        return maxWhitelistDeposit.sub(depositsWhitelist[beneficiary]);
    }

    // Modifier is eligible sender modifier
    modifier isEligibleSender() {
        require(
            msg.sender == tx.origin,
            "Contracts are not allowed to snipe the sale"
        );
        _;
    }
}
