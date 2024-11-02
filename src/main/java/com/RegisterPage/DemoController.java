package com.RegisterPage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Optional;

@Controller
public class DemoController {

    @Autowired
    serviceemp t1;

    @RequestMapping("/")
    public String register() {
        return "reg";
    }


    @PostMapping("/data")
    public String getdata(@ModelAttribute("c1") empdata c1, @RequestParam("profileupload") MultipartFile filename) throws IOException
    {

        if(c1.getPassword().equals(c1.getCpassword()))
        {

            //file upload

            String f=filename.getOriginalFilename();

            String path="E:\\YT PROJECT\\RegisterPage\\src\\main\\resources\\static\\images";

            BufferedOutputStream bf =new BufferedOutputStream(new FileOutputStream(path+"/"+f));

            byte b []=filename.getBytes();

            bf.write(b);

            bf.close();

            c1.setProfilephoto(f);



            t1.regsiterdata(c1);
        }


        return "login";
    }

    @RequestMapping("/login")
    public String logindata() {




        return "login";
    }


    //login Mapping
    @PostMapping("/datach")
    public String checklogin(@RequestParam("email") String email,
                             @RequestParam("password") String password,
                             HttpSession h1) {

        Optional<empdata> x = t1.findbyemailandpass(email, password);

        if (x == null) {
            // Handle invalid login attempt
            h1.setAttribute("error", "Invalid email or password");
            return "redirect:/login";
        }

        // Set attributes if login is successful
        h1.setAttribute("username", x.get().getUsername());
        h1.setAttribute("email", x.get().getEmail());
        h1.setAttribute("location", x.get().getLocation());
        h1.setAttribute("password", x.get().getPassword());
        h1.setAttribute("profile", x.get().getProfilephoto());
        h1.setAttribute("about", x.get().getAbout());
        h1.setAttribute("id", x.get().getId());

        return "dash";  // Redirect to dashboard if login succeeds
    }



    @RequestMapping("/dash")
    public String dash(HttpSession h1)
    {

        String a=	(String) h1.getAttribute("email");

        if(a==null)
        {
            return "login";
        }

        return "dash";
    }

    //edit

    @GetMapping("/edit/{id}")
    public String editdata(@PathVariable int id, ModelMap m) {
        Optional<empdata> optionalEmp = t1.findbyiddata(id);

        if (optionalEmp.isPresent()) {
            empdata emp = optionalEmp.get();  // Unwrap the Optional
            m.addAttribute("kk", emp);  // Add the unwrapped object
        } else {
            // Handle the case where the employee with the given ID is not found
            return "redirect:/error";  // Redirect to an error page or handle gracefully
        }

        return "edit";
    }


    //Update

    @PostMapping("/dataupdate")
    public String updatedata(
            @ModelAttribute("c1") empdata c1,
            @RequestParam("profileupload") MultipartFile filename) throws IOException {

        // Retrieve the existing entity from the database
        Optional<empdata> existingEmp = t1.findbyiddata(c1.getId());

        if (existingEmp.isPresent()) {
            empdata e1 = existingEmp.get();  // Get the existing record

            // If a new profile image is uploaded, update it; otherwise, keep the existing one
            if (!filename.isEmpty()) {
                String f = filename.getOriginalFilename();
                String path = "E:\\YT PROJECT\\RegisterPage\\src\\main\\resources\\static\\images";

                // Save the uploaded file
                try (BufferedOutputStream bf = new BufferedOutputStream(new FileOutputStream(path + "/" + f))) {
                    bf.write(filename.getBytes());
                }
                e1.setProfilephoto(f);  // Update the profile photo field
            }

            // Update other fields with the new values
            e1.setUsername(c1.getUsername());
            e1.setEmail(c1.getEmail());
            e1.setLocation(c1.getLocation());
            e1.setAbout(c1.getAbout());
            e1.setPassword(c1.getPassword());
            e1.setCpassword(c1.getCpassword());

            // Save the updated entity using JpaRepository's save method
            t1.save(e1);
        } else {
            // Handle the case where the entity is not found (optional)
            return "redirect:/error";
        }

        return "redirect:/logout";
    }






    @RequestMapping("/logout")
    public String logout(HttpSession h1)
    {

        h1.invalidate();

        return "login";
    }





}
