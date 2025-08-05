package in.ashok;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.validation.constraints.Email;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class student {

    @NotEmpty(message = "first name required")
    private String FirstName;

    private String LastName;

    @NotEmpty(message = "mobile number required")
    @Size(min=10 ,max=10,message="mobile should have atleast 10 digit")
    private String Mobilenumber;

    @NotEmpty(message = "enter email id")
    @Email(message = "enter valid email id")
    private String Email;

    @NotEmpty(message="enter password")
    @Size(min = 6, max = 20, message = "password must be between 6 and 20 characters")
    @Pattern(
        regexp = "^(?=.*[A-Z][a-z])(?=.*\\d).+$",
        message = "password must contain at least one lowercase and uppercase letter and one digit"
    )
    private String Password;

    private String Address;
}
